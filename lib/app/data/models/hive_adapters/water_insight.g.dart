// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../request/water_insight.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaterInsightAdapter extends TypeAdapter<WaterInsight> {
  @override
  final int typeId = 0;

  @override
  WaterInsight read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaterInsight(
      waterLog: fields[1] as WaterLogRequestDto,
    );
  }

  @override
  void write(BinaryWriter writer, WaterInsight obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.waterLog);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaterInsightAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
