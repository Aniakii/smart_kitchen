import '../entities/room.dart';
import '../entities/storage_unit.dart';

abstract interface class KitchenRepository {
  List<Room> getRooms();

  Future<void> updateRoom(int id, String name);

  List<StorageUnit> getStorageUnits();

  Future<void> updateStorageUnit(int id, String name);

  Future<void> deleteRoom(int id);

  Future<void> deleteStorageUnit(int id);

  Future<void> createRoom(Room room);

  Future<void> createStorageUnit(StorageUnit storageUnit);

  List<StorageUnit> getStorageUnitsByRoomId(int id);
}
