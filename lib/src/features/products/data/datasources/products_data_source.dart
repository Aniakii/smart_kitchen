import '../models/product_hive.dart';

abstract interface class ProductsDataSource {
  Future<void> initializeDatabase();

  List<ProductHive> loadProducts();

  Future<void> updateProduct(ProductHive product);

  Future<void> saveProduct(ProductHive product);

  Future<void> deleteProduct(int id);

  Future<void> deleteByStorageUnitId(int storageUnitId);

  Future<void> deleteByRoomId(int roomId);
}
