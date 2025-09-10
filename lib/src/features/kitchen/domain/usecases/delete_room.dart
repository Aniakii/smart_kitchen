import 'package:smart_kitchen/src/features/kitchen/domain/entities/storage_unit.dart';
import 'package:smart_kitchen/src/features/products/domain/repositories/products_repository.dart';
import '../repositories/kitchen_repository.dart';

class DeleteRoom {
  final KitchenRepository kitchenRepository;
  final ProductsRepository productsRepository;

  DeleteRoom(this.kitchenRepository, this.productsRepository);

  Future<void> call(int id) async {
    final storageUnits = kitchenRepository.getStorageUnitsByRoomId(id);
    await productsRepository.deleteByRoomId(id);
    for (StorageUnit su in storageUnits) {
      await kitchenRepository.deleteStorageUnit(su.id);
    }
    await kitchenRepository.deleteRoom(id);
  }
}
