import 'package:smart_kitchen/src/features/locations/domain/entities/storage_unit.dart';
import '../models/storage_unit_hive.dart';

class StorageUnitMapper {
  static StorageUnit toEntity(StorageUnitHive model) =>
      StorageUnit(model.id, model.name, model.roomId);

  static StorageUnitHive toHiveModel(StorageUnit entity) =>
      StorageUnitHive(entity.id, entity.name, entity.roomId);
}
