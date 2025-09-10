import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/get_products_by_room.dart';
import 'package:smart_kitchen/src/features/products/domain/usecases/get_products_by_storage_unit.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/usecases/create_product.dart';
import '../../../../domain/usecases/delete_product.dart';
import '../../../../domain/usecases/get_products.dart';
import '../../../../domain/usecases/update_product.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProducts _getProducts;
  final GetProductsByRoom _getProductsByRoom;
  final GetProductsByStorageUnit _getProductsByStorageUnit;
  final UpdateProduct _updateProduct;
  final CreateProduct _createProduct;
  final DeleteProduct _deleteProduct;

  ProductsBloc(
    this._getProducts,
    this._getProductsByRoom,
    this._getProductsByStorageUnit,
    this._updateProduct,
    this._createProduct,
    this._deleteProduct,
  ) : super(ProductsState.initial()) {
    on<CreateInitialStateEvent>(_createInitialState);
    on<UpdateProductEvent>(_onUpdateProductNameEvent);
    on<DeleteProductEvent>(_onDeleteProductEvent);
    on<CreateProductEvent>(_onCreateProductEvent);
    on<SearchProductEvent>(_onSearchProductEvent);
    on<ResetLastActionMessageEvent>(_onResetLastActionMessageEvent);
  }

  Product getProductById(int id) {
    return state.allProducts.firstWhere((p) => p.id == id);
  }

  List<Product> getAllProducts() {
    return state.allProducts.isEmpty ? _getProducts() : state.allProducts;
  }

  Future<void> _createInitialState(
    CreateInitialStateEvent event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      final products = _getProducts();
      List<Product> selectedProducts = [];

      if (event.selectedRoomId == null) {
        emit(
          state.copyWith(
            allProducts: products,
            selectedProducts: products,
            presentedProducts: products,
            isLoading: false,
          ),
        );
        return;
      }

      if (event.selectedStorageUnitId != null) {
        selectedProducts = _getProductsByStorageUnit(
          event.selectedStorageUnitId!,
        );
      } else {
        selectedProducts = _getProductsByRoom(event.selectedRoomId!);
      }

      emit(
        state.copyWith(
          allProducts: products,
          selectedProducts: selectedProducts,
          presentedProducts: selectedProducts,
          selectedRoomId: event.selectedRoomId,
          selectedStorageUnitId: event.selectedStorageUnitId,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to fetch products: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onUpdateProductNameEvent(
    UpdateProductEvent event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      await _updateProduct(
        event.id,
        event.name,
        event.category,
        event.expiryDate,
        event.amount,
        event.roomId,
        event.storageUnitId,
      );
      final result = _reloadProducts();

      emit(
        state.copyWith(
          allProducts: result['allProducts']!,
          selectedProducts: result['selectedProducts']!,
          presentedProducts: result['presentedProducts']!,
          hasError: false,
          lastActionMessage: 'Product successfully updated!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to update product: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onDeleteProductEvent(
    DeleteProductEvent event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      await _deleteProduct(event.productId);
      final result = _reloadProducts();

      emit(
        state.copyWith(
          allProducts: result['allProducts']!,
          selectedProducts: result['selectedProducts']!,
          presentedProducts: result['presentedProducts']!,
          hasError: false,
          lastActionMessage: 'Product successfully deleted!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to delete product: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onCreateProductEvent(
    CreateProductEvent event,
    Emitter<ProductsState> emit,
  ) async {
    try {
      await _createProduct(
        event.name,
        event.category,
        event.inputDate,
        event.expiryDate,
        event.amount,
        event.roomId,
        event.storageUnitId,
      );
      final result = _reloadProducts();

      emit(
        state.copyWith(
          allProducts: result['allProducts']!,
          selectedProducts: result['selectedProducts']!,
          presentedProducts: result['presentedProducts']!,
          hasError: false,
          lastActionMessage: 'Product successfully created!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to create product: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onResetLastActionMessageEvent(
    ResetLastActionMessageEvent event,
    Emitter<ProductsState> emit,
  ) {
    emit(state.copyWith(lastActionMessage: null));
  }

  void _onSearchProductEvent(
    SearchProductEvent event,
    Emitter<ProductsState> emit,
  ) {
    if (event.pattern.isEmpty) {
      emit(state.copyWith(presentedProducts: state.selectedProducts));
      return;
    }

    emit(
      state.copyWith(
        presentedProducts: state.selectedProducts
            .where(
              (p) => p.name.toLowerCase().contains(event.pattern.toLowerCase()),
            )
            .toList(),
      ),
    );
  }

  Map<String, List<Product>> _reloadProducts() {
    final products = _getProducts();
    List<Product> selectedProducts = [];

    if (state.selectedRoomId == null) {
      return {
        'allProducts': products,
        'selectedProducts': products,
        'presentedProducts': products,
      };
    }

    if (state.selectedStorageUnitId != null) {
      selectedProducts = _getProductsByStorageUnit(
        state.selectedStorageUnitId!,
      );
    } else {
      selectedProducts = _getProductsByRoom(state.selectedRoomId!);
    }

    return {
      'allProducts': products,
      'selectedProducts': selectedProducts,
      'presentedProducts': selectedProducts,
    };
  }
}
