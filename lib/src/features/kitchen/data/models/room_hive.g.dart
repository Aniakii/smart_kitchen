// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomHiveAdapter extends TypeAdapter<RoomHive> {
  @override
  final int typeId = 0;

  @override
  RoomHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RoomHive(
      fields[0] as int,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RoomHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
