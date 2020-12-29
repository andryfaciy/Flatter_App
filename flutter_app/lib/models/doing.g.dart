// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doing.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoingAdapter extends TypeAdapter<Doing> {
  @override
  final typeId = 1;

  @override
  Doing read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doing(
      complete1: fields[1] as bool,
      Nazvanie: fields[2] as String,
      Summa1: fields[3] as String,
    )..id1 = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, Doing obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id1)
      ..writeByte(1)
      ..write(obj.complete1)
      ..writeByte(2)
      ..write(obj.Nazvanie)
      ..writeByte(3)
      ..write(obj.Summa1);
  }
}