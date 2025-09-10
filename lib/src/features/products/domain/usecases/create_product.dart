import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';
import '../entities/product.dart';
import '../repositories/products_repository.dart';

class CreateProduct {
  final ProductsRepository repository;

  CreateProduct(this.repository);

  Future<void> call(
    String name,
    CategoryProducts category,
    DateTime? inputDate,
    DateTime? expiryDate,
    int amount,
    int? roomId,
    int? storageUnitId,
  ) async {
    final allProducts = repository.getProducts();
    int nextId = allProducts.isEmpty ? 0 : allProducts.last.id + 1;

    final product = Product(
      id: nextId,
      name: name,
      category: category,
      inputDate: inputDate,
      expiryDate: expiryDate,
      amount: amount,
      roomId: roomId,
      storageUnitId: storageUnitId,
    );
    return await repository.createProduct(product);
  }
}
