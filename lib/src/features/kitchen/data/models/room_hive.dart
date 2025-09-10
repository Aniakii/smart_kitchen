import 'package:hive/hive.dart';

part 'room_hive.g.dart';

@HiveType(typeId: 0)
class RoomHive extends HiveObject {
  RoomHive(this.id, this.name);

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;
}
