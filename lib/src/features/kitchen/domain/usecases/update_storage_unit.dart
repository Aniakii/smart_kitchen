import '../repositories/kitchen_repository.dart';

class UpdateStorageUnit {
  final KitchenRepository repository;

  UpdateStorageUnit(this.repository);

  Future<void> call(int storageUnitId, String name) async =>
      await repository.updateStorageUnit(storageUnitId, name);
}
