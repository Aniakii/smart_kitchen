// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_unit_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StorageUnitHiveAdapter extends TypeAdapter<StorageUnitHive> {
  @override
  final int typeId = 1;

  @override
  StorageUnitHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StorageUnitHive(
      fields[0] as int,
      fields[1] as String,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StorageUnitHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.roomId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StorageUnitHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
