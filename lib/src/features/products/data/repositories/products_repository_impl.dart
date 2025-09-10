import '../../domain/entities/product.dart';
import '../../domain/repositories/products_repository.dart';
import '../datasources/products_data_source.dart';
import '../mappers/product_mapper.dart';
import '../models/product_hive.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsDataSource localDataSource;

  ProductsRepositoryImpl(this.localDataSource);

  @override
  List<Product> getProducts() {
    final productsHive = localDataSource.loadProducts();

    List<Product> products = [];

    for (ProductHive productHive in productsHive) {
      products.add(ProductMapper.toEntity(productHive));
    }
    return products;
  }

  @override
  List<Product> getProductsByRoom(int roomId) {
    final productsHive = localDataSource.loadProducts();

    List<Product> products = [];

    for (ProductHive productHive in productsHive) {
      if (productHive.roomId == roomId) {
        products.add(ProductMapper.toEntity(productHive));
      }
    }
    return products;
  }

  @override
  List<Product> getProductsByStorageUnit(int storageUnitId) {
    final productsHive = localDataSource.loadProducts();

    List<Product> products = [];

    for (ProductHive productHive in productsHive) {
      if (productHive.storageUnitId == storageUnitId) {
        products.add(ProductMapper.toEntity(productHive));
      }
    }
    return products;
  }

  @override
  Future<void> updateProduct(Product product) async {
    final hiveModel = ProductMapper.toHiveModel(product);
    await localDataSource.updateProduct(hiveModel);
  }

  @override
  Future<void> createProduct(Product product) async {
    final hiveModel = ProductMapper.toHiveModel(product);
    await localDataSource.saveProduct(hiveModel);
  }

  @override
  Future<void> deleteProduct(int id) async {
    await localDataSource.deleteProduct(id);
  }

  @override
  Future<void> deleteByRoomId(int roomId) async {
    await localDataSource.deleteByRoomId(roomId);
  }

  @override
  Future<void> deleteByStorageUnitId(int storageUnitId) async {
    await localDataSource.deleteByStorageUnitId(storageUnitId);
  }
}
