// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response/water_log_response_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaterLogResponseDtoAdapter extends TypeAdapter<WaterLogResponseDto> {
  @override
  final int typeId = 2;

  @override
  WaterLogResponseDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaterLogResponseDto(
      volume: fields[0] as int,
      containerType: fields[1] as String,
      timestamp: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WaterLogResponseDto obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.volume)
      ..writeByte(1)
      ..write(obj.containerType)
      ..writeByte(2)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaterLogResponseDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
