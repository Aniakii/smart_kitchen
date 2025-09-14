import '../../../../domain/entities/room.dart';

abstract class StorageUnitsEvent {}

class CreateInitialStateEvent extends StorageUnitsEvent {
  final Room? selectedRoom;

  CreateInitialStateEvent(this.selectedRoom);
}

class StartEditingStorageUnitNameEvent extends StorageUnitsEvent {
  final int storageUnitId;

  StartEditingStorageUnitNameEvent(this.storageUnitId);
}

class UpdateStorageUnitNameEvent extends StorageUnitsEvent {
  final int storageUnitId;
  final String storageUnitName;

  UpdateStorageUnitNameEvent(this.storageUnitId, this.storageUnitName);
}

class DeleteStorageUnitEvent extends StorageUnitsEvent {
  final int storageUnitId;

  DeleteStorageUnitEvent(this.storageUnitId);
}

class CreateStorageUnitEvent extends StorageUnitsEvent {
  final String storageUnitName;

  CreateStorageUnitEvent(this.storageUnitName);
}

class ResetLastActionMessageEvent extends StorageUnitsEvent {
  ResetLastActionMessageEvent();
}
