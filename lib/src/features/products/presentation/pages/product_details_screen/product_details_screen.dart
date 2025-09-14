import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_rooms/bloc/rooms_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_bloc.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/product_details_screen/widgets/category_section_widget.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/product_details_screen/widgets/details_section_widget.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/product_details_screen/widgets/storage_section_widget.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../../core/routing/app_router.dart';
import '../../../../kitchen/domain/entities/room.dart';
import '../../../../kitchen/domain/entities/storage_unit.dart';
import '../../../domain/entities/product.dart';
import '../../dtos/new_product_dto.dart';
import '../all_products_screen/bloc/products_bloc.dart';
import '../all_products_screen/bloc/products_event.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  final int selectedProductId;

  const ProductDetailsScreen({required this.selectedProductId, super.key});

  Future<void> _modifyProduct(
    BuildContext context,
    List<Room> rooms,
    List<StorageUnit> storageUnits,
    Product selectedProduct,
    ProductsBloc bloc,
  ) async {
    final result = await context.router.push<NewProductDto>(
      AddProductRoute(
        modifiedProduct: selectedProduct,
        allRooms: rooms,
        allStorageUnits: storageUnits,
        selectedRoom: rooms
            .where((r) => r.id == selectedProduct.roomId)
            .firstOrNull,
        selectedStorageUnit: storageUnits
            .where((s) => s.id == selectedProduct.storageUnitId)
            .firstOrNull,
      ),
    );

    if (result == null) return;

    bloc.add(
      UpdateProductEvent(
        id: selectedProduct.id,
        name: result.name,
        category: result.category,
        amount: result.amount,
        expiryDate: result.expiryDate,
        roomId: result.selectedRoom,
        storageUnitId: result.selectedStorageUnit,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final stateRoom = context.read<RoomsBloc>().state;
        final stateStorageUnit = context
            .read<
              StorageUnitsBloc
            >(); //TODO: co z inicjacją tego blocu i pobieraniem listy storage'ow
        final stateProduct = context.read<ProductsBloc>().state;

        final selectedProduct = stateProduct.getProductById(selectedProductId);

        final roomName = selectedProduct.roomId != null
            ? stateRoom.allRooms
                  .where((r) => r.id == selectedProduct.roomId)
                  .first
                  .name
            : AppLocalizations.of(context)!.notIncludedLabel;

        final storageUnitName = selectedProduct.storageUnitId != null
            ? stateStorageUnit
                  .getAllStorageUnits()
                  .where((s) => s.id == selectedProduct.storageUnitId)
                  .first
                  .name
            : AppLocalizations.of(context)!.notIncludedLabel;

        return Scaffold(
          appBar: AppBar(
            title: Text(stateProduct.getProductById(selectedProductId).name),
            actions: [
              IconButton(
                onPressed: () => _modifyProduct(
                  context,
                  stateRoom.allRooms,
                  stateStorageUnit.getAllStorageUnits(),
                  selectedProduct,
                  context.read<ProductsBloc>(),
                ),
                icon: Icon(Icons.edit),
              ),
            ],
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategorySectionWidget(selectedProduct: selectedProduct),
                Divider(),
                DetailsSectionWidget(selectedProduct: selectedProduct),
                Divider(),
                StorageSectionWidget(
                  roomName: roomName,
                  storageUnitName: storageUnitName,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
