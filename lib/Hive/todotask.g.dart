// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todotask.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodotaskAdapter extends TypeAdapter<Todotask> {
  @override
  final int typeId = 1;

  @override
  Todotask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todotask(
      title: fields[0] as String,
      date: fields[1] as String,
      isCompleted: fields[2] as bool,
      time: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Todotask obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.isCompleted)
      ..writeByte(3)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodotaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
