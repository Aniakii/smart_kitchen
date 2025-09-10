import '../repositories/kitchen_repository.dart';

class GetStorageUnitsCount {
  final KitchenRepository repository;

  GetStorageUnitsCount(this.repository);

  int call(int id) {
    final storageUnits = repository.getStorageUnitsByRoomId(id);
    return storageUnits.length;
  }
}
