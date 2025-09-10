import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/app/theme/app_colors.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_rooms/bloc/rooms_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_bloc.dart';
import 'package:smart_kitchen/src/features/products/presentation/dtos/new_product_dto.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/all_products_screen/widgets/search_product_widget.dart';
import '../../../../../core/routing/app_router.dart';
import '../../../../kitchen/domain/entities/room.dart';
import '../../../../kitchen/domain/entities/storage_unit.dart';
import 'widgets/products_list_widget.dart';
import 'bloc/products_bloc.dart';
import 'bloc/products_state.dart';
import 'bloc/products_event.dart';

@RoutePage()
class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({
    this.selectedRoom,
    this.selectedStorageUnit,
    super.key,
  });

  final Room? selectedRoom;
  final StorageUnit? selectedStorageUnit;

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  bool isContainerSelected = false;

  @override
  void initState() {
    super.initState();
    context.read<ProductsBloc>().add(
      CreateInitialStateEvent(
        widget.selectedRoom?.id,
        widget.selectedStorageUnit?.id,
      ),
    );
    isContainerSelected =
        widget.selectedRoom != null || widget.selectedStorageUnit != null
        ? true
        : false;
  }

  Future<void> _addProduct() async {
    final result = await context.router.push<NewProductDto>(
      AddProductRoute(
        allRooms: context.read<RoomsBloc>().state.allRooms,
        allStorageUnits: context.read<StorageUnitsBloc>().getAllStorageUnits(),
        selectedRoom: widget.selectedRoom,
        selectedStorageUnit: widget.selectedStorageUnit,
      ),
    );

    if (!mounted) return;
    if (result == null) return;

    context.read<ProductsBloc>().add(
      CreateProductEvent(
        name: result.name,
        category: result.category,
        amount: result.amount,
        inputDate: DateTime.now(),
        expiryDate: result.expiryDate,
        roomId: result.selectedRoom,
        storageUnitId: result.selectedStorageUnit,
      ),
    );
  }

  void _listener(BuildContext context, ProductsState state) {
    if (state.lastActionMessage != null) {
      final snackBar = SnackBar(
        content: Text(state.lastActionMessage!),
        backgroundColor: state.hasError ? null : AppColors.success,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      context.read<ProductsBloc>().add(ResetLastActionMessageEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductsBloc, ProductsState>(
      listener: (context, state) => _listener(context, state),
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Scaffold(
              body: Column(
                children: [
                  SearchProductWidget(
                    onChanged: (query) {
                      context.read<ProductsBloc>().add(
                        SearchProductEvent(query),
                      );
                    },
                  ),
                  ProductsListWidget(
                    presentedProducts: state.presentedProducts,
                    onSelect: (int id) {
                      context.router.push(
                        ProductDetailsRoute(selectedProductId: id),
                      );
                    },
                    onDelete: (int id) {
                      context.read<ProductsBloc>().add(DeleteProductEvent(id));
                    },
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: _addProduct,
                child: const Icon(Icons.add),
              ),
            );
          }
        },
      ),
    );
  }
}
