import 'package:smart_kitchen/src/features/products/domain/entities/product.dart';
import 'package:smart_kitchen/src/features/products/domain/repositories/products_repository.dart';

class GetProducts {
  final ProductsRepository repository;

  GetProducts(this.repository);

  List<Product> call() {
    return repository.getProducts();
  }
}
