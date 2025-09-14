import 'package:hive_ce/hive.dart';
import 'package:smart_kitchen/src/features/products/data/datasources/products_data_source.dart';
import '../models/product_hive.dart';

class ProductsLocalDataSource implements ProductsDataSource {
  late final Box<ProductHive> productsBox;

  @override
  Future<void> initializeDatabase() async {
    Hive.registerAdapter(ProductHiveAdapter());

    productsBox = await Hive.openBox<ProductHive>('productsBox');
  }

  @override
  List<ProductHive> loadProducts() => productsBox.values.toList();

  @override
  Future<void> updateProduct(ProductHive product) async =>
      await productsBox.put(product.id, product);

  @override
  Future<void> deleteProduct(int id) async => await productsBox.delete(id);

  @override
  Future<void> saveProduct(ProductHive product) async =>
      await productsBox.put(product.id, product);

  @override
  Future<void> deleteByRoomId(int roomId) async {
    for (ProductHive product in productsBox.values.toList()) {
      if (product.roomId == roomId) {
        await productsBox.delete(product.id);
      }
    }
  }

  @override
  Future<void> deleteByStorageUnitId(int storageUnitId) async {
    for (ProductHive product in productsBox.values.toList()) {
      if (product.storageUnitId == storageUnitId) {
        await productsBox.delete(product.id);
      }
    }
  }
}
