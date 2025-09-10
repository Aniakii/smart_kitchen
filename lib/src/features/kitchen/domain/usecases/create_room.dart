import '../entities/room.dart';
import '../repositories/kitchen_repository.dart';

class CreateRoom {
  final KitchenRepository repository;

  CreateRoom(this.repository);

  Future<void> call(String name) async {
    final allRooms = repository.getRooms();
    int nextId = allRooms.isEmpty ? 0 : allRooms.last.id + 1;

    final room = Room(nextId, name);
    return await repository.createRoom(room);
  }
}
