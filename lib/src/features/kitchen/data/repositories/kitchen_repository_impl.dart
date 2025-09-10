import '../../domain/entities/room.dart';
import '../../domain/entities/storage_unit.dart';
import '../../domain/repositories/kitchen_repository.dart';
import '../datasources/kitchen_data_source.dart';
import '../mappers/room_mapper.dart';
import '../mappers/storage_unit_mapper.dart';
import '../models/room_hive.dart';
import '../models/storage_unit_hive.dart';

class KitchenRepositoryImpl implements KitchenRepository {
  final KitchenDataSource localDataSource;

  KitchenRepositoryImpl(this.localDataSource);

  @override
  List<Room> getRooms() {
    final roomsHive = localDataSource.loadRooms();

    List<Room> rooms = [];

    for (RoomHive roomHive in roomsHive) {
      rooms.add(RoomMapper.toEntity(roomHive));
    }
    return rooms;
  }

  @override
  Future<void> updateRoom(int id, String name) async {
    await localDataSource.updateRoom(id, name);
  }

  @override
  List<StorageUnit> getStorageUnits() {
    final storageUnitsHive = localDataSource.loadStorageUnits();

    List<StorageUnit> storageUnits = [];

    for (StorageUnitHive storageUnitHive in storageUnitsHive) {
      storageUnits.add(StorageUnitMapper.toEntity(storageUnitHive));
    }
    return storageUnits;
  }

  @override
  Future<void> updateStorageUnit(int id, String name) async {
    await localDataSource.updateStorageUnit(id, name);
  }

  @override
  Future<void> createRoom(Room room) async {
    final hiveModel = RoomMapper.toHiveModel(room);
    await localDataSource.saveRoom(hiveModel);
  }

  @override
  Future<void> createStorageUnit(StorageUnit storageUnit) async {
    final hiveModel = StorageUnitMapper.toHiveModel(storageUnit);
    await localDataSource.saveStorageUnit(hiveModel);
  }

  @override
  Future<void> deleteRoom(int id) async {
    await localDataSource.deleteRoom(id);
  }

  @override
  Future<void> deleteStorageUnit(int id) async {
    await localDataSource.deleteStorageUnit(id);
  }

  @override
  List<StorageUnit> getStorageUnitsByRoomId(int id) {
    final allStorageUnits = localDataSource.loadStorageUnits();
    final List<StorageUnit> storageUnitsByRoomId = [];
    for (StorageUnitHive storageUnitHive in allStorageUnits) {
      if (storageUnitHive.roomId == id) {
        storageUnitsByRoomId.add(StorageUnitMapper.toEntity(storageUnitHive));
      }
    }
    return storageUnitsByRoomId;
  }
}
