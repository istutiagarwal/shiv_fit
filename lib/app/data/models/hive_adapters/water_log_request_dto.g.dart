// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../request/water_log_request_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaterLogRequestDtoAdapter extends TypeAdapter<WaterLogRequestDto> {
  @override
  final int typeId = 1;

  @override
  WaterLogRequestDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaterLogRequestDto(
      volume: fields[0] as int,
      containerType: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WaterLogRequestDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.volume)
      ..writeByte(1)
      ..write(obj.containerType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaterLogRequestDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
