import 'package:smart_kitchen/src/features/locations/domain/entities/storage_unit.dart';
import '../repositories/kitchen_repository.dart';

class CreateStorageUnit {
  final KitchenRepository repository;

  CreateStorageUnit(this.repository);

  Future<void> call(String name, int roomId) async {
    final allStorageUnits = repository.getStorageUnits();
    int nextId = allStorageUnits.isEmpty ? 0 : allStorageUnits.last.id + 1;

    final storageUnit = StorageUnit(nextId, name, roomId);
    return await repository.createStorageUnit(storageUnit);
  }
}
