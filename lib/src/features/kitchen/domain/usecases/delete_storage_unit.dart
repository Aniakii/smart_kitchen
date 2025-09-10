import '../../../products/domain/repositories/products_repository.dart';
import '../repositories/kitchen_repository.dart';

class DeleteStorageUnit {
  final KitchenRepository kitchenRepository;

  final ProductsRepository productsRepository;

  DeleteStorageUnit(this.kitchenRepository, this.productsRepository);

  Future<void> call(int id) async {
    await productsRepository.deleteByStorageUnitId(id);
    await kitchenRepository.deleteStorageUnit(id);
  }
}
