import 'package:smart_kitchen/src/features/locations/domain/entities/storage_unit.dart';
import '../repositories/kitchen_repository.dart';

class GetStorageUnits {
  final KitchenRepository repository;

  GetStorageUnits(this.repository);

  List<StorageUnit> call() => repository.getStorageUnits();
}
