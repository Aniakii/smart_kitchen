import '../repositories/products_repository.dart';

class DeleteProduct {
  final ProductsRepository repository;

  DeleteProduct(this.repository);

  Future<void> call(int id) async {
    await repository.deleteProduct(id);
  }
}
