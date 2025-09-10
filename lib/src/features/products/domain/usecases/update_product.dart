import 'package:smart_kitchen/src/features/products/domain/entities/product.dart';
import '../entities/category_products.dart';
import '../repositories/products_repository.dart';

class UpdateProduct {
  final ProductsRepository repository;

  UpdateProduct(this.repository);

  Future<void> call(
    int id,
    String name,
    CategoryProducts category,
    DateTime? expiryDate,
    int amount,
    int? roomId,
    int? storageUnitId,
  ) async {
    final allProducts = repository.getProducts();
    int productIndex = allProducts.indexWhere((p) => p.id == id);

    Product updatedProduct = Product(
      id: id,
      name: name,
      category: category,
      expiryDate: expiryDate,
      inputDate: allProducts[productIndex].inputDate,
      amount: amount,
      roomId: roomId,
      storageUnitId: storageUnitId,
    );
    return await repository.updateProduct(updatedProduct);
  }
}
