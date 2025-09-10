import '../entities/product.dart';

abstract interface class ProductsRepository {
  List<Product> getProducts();

  List<Product> getProductsByRoom(int roomId);

  List<Product> getProductsByStorageUnit(int storageUnitId);

  Future<void> updateProduct(Product product);

  Future<void> deleteProduct(int id);

  Future<void> createProduct(Product product);

  Future<void> deleteByStorageUnitId(int storageUnitId);

  Future<void> deleteByRoomId(int roomId);
}
