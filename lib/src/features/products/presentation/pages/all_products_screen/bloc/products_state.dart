import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_kitchen/src/features/products/domain/entities/product.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required final List<Product> allProducts,
    required final List<Product> selectedProducts,
    required final List<Product> presentedProducts,
    required final bool hasError,
    required final bool isLoading,
    final int? selectedRoomId,
    final int? selectedStorageUnitId,
    final String? lastActionMessage,
  }) = _ProductsState;

  factory ProductsState.initial() => ProductsState(
    allProducts: [],
    selectedProducts: [],
    presentedProducts: [],
    isLoading: true,
    hasError: false,
    selectedRoomId: null,
    selectedStorageUnitId: null,
    lastActionMessage: null,
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
