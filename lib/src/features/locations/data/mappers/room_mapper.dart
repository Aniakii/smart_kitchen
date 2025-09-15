import '../../domain/entities/room.dart';
import '../models/room_hive.dart';

class RoomMapper {
  static Room toEntity(RoomHive model) => Room(model.id, model.name);

  static RoomHive toHiveModel(Room entity) => RoomHive(entity.id, entity.name);
}
