import '../repositories/kitchen_repository.dart';

class UpdateRoom {
  final KitchenRepository repository;

  UpdateRoom(this.repository);

  Future<void> call(int roomId, String name) async =>
      await repository.updateRoom(roomId, name);
}
