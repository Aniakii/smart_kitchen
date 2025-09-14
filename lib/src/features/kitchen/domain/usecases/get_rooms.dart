import '../entities/room.dart';
import '../repositories/kitchen_repository.dart';

class GetRooms {
  final KitchenRepository repository;

  GetRooms(this.repository);

  List<Room> call() => repository.getRooms();
}
