import 'package:smart_kitchen/src/features/products/domain/entities/product.dart';
import 'package:smart_kitchen/src/features/products/domain/repositories/products_repository.dart';

class GetProductsByStorageUnit {
  final ProductsRepository repository;

  GetProductsByStorageUnit(this.repository);

  List<Product> call(int id) {
    return repository.getProductsByStorageUnit(id);
  }
}
