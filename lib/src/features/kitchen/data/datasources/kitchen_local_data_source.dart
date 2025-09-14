import 'package:hive_ce/hive.dart';
import 'package:smart_kitchen/src/features/kitchen/data/models/room_hive.dart';
import 'package:smart_kitchen/src/features/kitchen/data/models/storage_unit_hive.dart';
import 'kitchen_data_source.dart';

class KitchenLocalDataSource implements KitchenDataSource {
  late final Box<RoomHive> roomsBox;
  late final Box<StorageUnitHive> storageUnitsBox;

  @override
  Future<void> initializeDatabase() async {
    Hive.registerAdapter(RoomHiveAdapter());
    Hive.registerAdapter(StorageUnitHiveAdapter());

    roomsBox = await Hive.openBox<RoomHive>('roomsBox');
    storageUnitsBox = await Hive.openBox<StorageUnitHive>('storageUnitsBox');
  }

  @override
  List<RoomHive> loadRooms() => roomsBox.values.toList();

  @override
  List<StorageUnitHive> loadStorageUnits() => storageUnitsBox.values.toList();

  @override
  Future<void> updateRoom(int id, String name) async {
    RoomHive updatedRoom = RoomHive(id, name);
    await roomsBox.put(id, updatedRoom);
  }

  @override
  Future<void> updateStorageUnit(int id, String name) async {
    StorageUnitHive updatedStorageUnit = StorageUnitHive(
      id,
      name,
      storageUnitsBox.get(id)!.roomId,
    );
    await storageUnitsBox.put(id, updatedStorageUnit);
  }

  @override
  Future<void> deleteRoom(int id) async => await roomsBox.delete(id);

  @override
  Future<void> deleteStorageUnit(int id) async =>
      await storageUnitsBox.delete(id);

  @override
  Future<void> saveRoom(RoomHive room) async =>
      await roomsBox.put(room.id, room);

  @override
  Future<void> saveStorageUnit(StorageUnitHive storageUnit) async =>
      await storageUnitsBox.put(storageUnit.id, storageUnit);
}
