import 'package:smart_kitchen/src/features/products/domain/entities/product.dart';
import 'package:smart_kitchen/src/features/products/domain/repositories/products_repository.dart';

class GetProductsByRoom {
  final ProductsRepository repository;

  GetProductsByRoom(this.repository);

  List<Product> call(int id) {
    return repository.getProductsByRoom(id);
  }
}
