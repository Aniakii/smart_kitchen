import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/entities/room.dart';
import 'package:smart_kitchen/src/features/recipes/presentation/recipes_screen.dart';
import '../../app/home_screen.dart';
import '../../features/kitchen/domain/entities/storage_unit.dart';
import '../../features/kitchen/presentation/pages/kitchen_screen.dart';
import '../../features/kitchen/presentation/pages/room_details_screen.dart';
import '../../features/kitchen/presentation/pages/storage_units_details_screen.dart';
import '../../features/products/domain/entities/product.dart';
import '../../features/products/presentation/pages/add_product_screen/add_product_screen.dart';
import 'package:collection/collection.dart';
import '../../features/products/presentation/pages/all_products_screen/all_products_screen.dart';
import '../../features/products/presentation/pages/barcode_scanner_screen/barcode_scanner_screen.dart';
import '../../features/products/presentation/pages/product_details_screen/product_details_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Tab,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
      children: [
        AutoRoute(page: KitchenRoute.page, initial: true),
        AutoRoute(page: RecipesRoute.page),
      ],
    ),
    AutoRoute(page: AddProductRoute.page),
    AutoRoute(page: RoomDetailsRoute.page),
    AutoRoute(page: StorageUnitsDetailsRoute.page),
    AutoRoute(page: ProductDetailsRoute.page),
    AutoRoute(page: BarcodeScannerRoute.page),
  ];
}
