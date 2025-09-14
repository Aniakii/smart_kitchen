import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:smart_kitchen/src/app/theme/app_theme.dart';
import 'package:smart_kitchen/src/core/l10n/app_localizations.dart';
import 'package:smart_kitchen/src/core/routing/app_router.dart';
import 'package:smart_kitchen/src/features/kitchen/data/datasources/kitchen_local_data_source.dart';
import 'package:smart_kitchen/src/features/kitchen/data/repositories/kitchen_repository_impl.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/repositories/kitchen_repository.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/create_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/create_storage_unit.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/delete_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/delete_storage_unit.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/get_rooms.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/get_storage_units.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/get_storage_units_by_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/update_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/update_storage_unit.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_rooms/bloc/rooms_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_bloc.dart';
import 'package:smart_kitchen/src/features/products/data/datasources/products_local_data_source.dart';
import 'package:smart_kitchen/src/features/products/data/repositories/products_repository_impl.dart';
import 'package:smart_kitchen/src/features/products/domain/repositories/products_repository.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/create_product.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/delete_product.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/get_products.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/get_products_by_room.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/get_products_by_storage_unit.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/update_product.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/all_products_screen/bloc/products_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  final kitchenLocalDataSource = KitchenLocalDataSource();
  final productsLocalDataSource = ProductsLocalDataSource();

  await Future.wait([
    kitchenLocalDataSource.initializeDatabase(),
    productsLocalDataSource.initializeDatabase(),
  ]);

  runApp(
    MyApp(
      kitchenDataSource: kitchenLocalDataSource,
      productsDataSource: productsLocalDataSource,
    ),
  );
}

class MyApp extends StatelessWidget {
  final KitchenLocalDataSource kitchenDataSource;
  final ProductsLocalDataSource productsDataSource;
  final _appRouter = AppRouter();

  MyApp({
    super.key,
    required this.kitchenDataSource,
    required this.productsDataSource,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<KitchenRepository>(
          create: (_) => KitchenRepositoryImpl(kitchenDataSource),
        ),
        RepositoryProvider<ProductsRepository>(
          create: (_) => ProductsRepositoryImpl(productsDataSource),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RoomsBloc(
              GetRooms(context.read<KitchenRepository>()),
              UpdateRoom(context.read<KitchenRepository>()),
              CreateRoom(context.read<KitchenRepository>()),
              DeleteRoom(
                context.read<KitchenRepository>(),
                context.read<ProductsRepository>(),
              ),
            ),
          ),
          BlocProvider(
            create: (context) => StorageUnitsBloc(
              GetStorageUnits(context.read<KitchenRepository>()),
              GetStorageUnitsByRoom(context.read<KitchenRepository>()),
              UpdateStorageUnit(context.read<KitchenRepository>()),
              CreateStorageUnit(context.read<KitchenRepository>()),
              DeleteStorageUnit(
                context.read<KitchenRepository>(),
                context.read<ProductsRepository>(),
              ),
            ),
          ),
          BlocProvider(
            create: (context) => ProductsBloc(
              GetProducts(context.read<ProductsRepository>()),
              GetProductsByRoom(context.read<ProductsRepository>()),
              GetProductsByStorageUnit(context.read<ProductsRepository>()),
              UpdateProduct(context.read<ProductsRepository>()),
              CreateProduct(context.read<ProductsRepository>()),
              DeleteProduct(context.read<ProductsRepository>()),
            ),
          ),
        ],
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en')],
          theme: AppTheme.theme,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
