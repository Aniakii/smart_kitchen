import 'package:smart_kitchen/src/features/kitchen/domain/entities/storage_unit.dart';
import '../repositories/kitchen_repository.dart';

class GetStorageUnitsByRoom {
  final KitchenRepository repository;

  GetStorageUnitsByRoom(this.repository);

  List<StorageUnit> call(int id) => repository.getStorageUnitsByRoomId(id);
}
