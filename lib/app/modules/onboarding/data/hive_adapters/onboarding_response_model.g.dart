// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response/onboarding_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OnboardingResponseModelAdapter
    extends TypeAdapter<OnboardingResponseModel> {
  @override
  final int typeId = 4;

  @override
  OnboardingResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OnboardingResponseModel(
      waterGoalLastUpdated: fields[0] as DateTime,
      waterGoal: fields[1] as String,
      selectedContainer:
          (fields[3] as List).cast<ContainerUsageResponseModel>(),
      selectedContainerLastUpdated: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, OnboardingResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.waterGoalLastUpdated)
      ..writeByte(1)
      ..write(obj.waterGoal)
      ..writeByte(2)
      ..write(obj.selectedContainerLastUpdated)
      ..writeByte(3)
      ..write(obj.selectedContainer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnboardingResponseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
