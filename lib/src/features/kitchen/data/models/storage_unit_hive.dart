import 'package:hive/hive.dart';

part 'storage_unit_hive.g.dart';

@HiveType(typeId: 1)
class StorageUnitHive {
  StorageUnitHive(this.id, this.name, this.roomId);

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int roomId;
}
