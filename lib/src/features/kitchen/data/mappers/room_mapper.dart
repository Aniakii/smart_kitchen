import '../../domain/entities/room.dart';
import '../models/room_hive.dart';

class RoomMapper {
  static Room toEntity(RoomHive model) {
    return Room(model.id, model.name);
  }

  static RoomHive toHiveModel(Room entity) {
    return RoomHive(entity.id, entity.name);
  }
}
