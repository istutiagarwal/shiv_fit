// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../request/container_usage_request_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContainerUsageRequestModelAdapter
    extends TypeAdapter<ContainerUsageRequestModel> {
  @override
  final int typeId = 7;

  @override
  ContainerUsageRequestModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContainerUsageRequestModel(
      containerName: fields[0] as String?,
      volume: fields[1] as String?,
      count: fields[2] as int?,
      percentageUsed: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ContainerUsageRequestModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.containerName)
      ..writeByte(1)
      ..write(obj.volume)
      ..writeByte(2)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.percentageUsed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerUsageRequestModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
