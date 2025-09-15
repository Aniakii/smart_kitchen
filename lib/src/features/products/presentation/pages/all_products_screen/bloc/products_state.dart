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

  Product getProductById(int id) => allProducts.firstWhere((p) => p.id == id);

  @override
  List<Product> get allProducts => throw UnimplementedError();

  @override
  bool get hasError => throw UnimplementedError();

  @override
  bool get isLoading => throw UnimplementedError();

  @override
  String? get lastActionMessage => throw UnimplementedError();

  @override
  List<Product> get presentedProducts => throw UnimplementedError();

  @override
  List<Product> get selectedProducts => throw UnimplementedError();

  @override
  int? get selectedRoomId => throw UnimplementedError();

  @override
  int? get selectedStorageUnitId => throw UnimplementedError();
}
