import 'package:smart_kitchen/src/features/kitchen/data/models/storage_unit_hive.dart';
import '../models/room_hive.dart';

abstract interface class KitchenDataSource {
  Future<void> initializeDatabase();

  List<RoomHive> loadRooms();

  List<StorageUnitHive> loadStorageUnits();

  Future<void> updateRoom(int id, String name);

  Future<void> updateStorageUnit(int id, String name);

  Future<void> saveRoom(RoomHive room);

  Future<void> saveStorageUnit(StorageUnitHive storageUnit);

  Future<void> deleteRoom(int id);

  Future<void> deleteStorageUnit(int id);
}
