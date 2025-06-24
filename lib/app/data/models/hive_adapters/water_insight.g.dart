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
      waterLog: fields[0] as WaterLogRequestDto,
      waterWeatherRequestModel: fields[6] as WaterWeatherRequestModel,
      waterSuggestionRequestModel: fields[5] as WaterSuggestionRequestModel,
      waterStreakRequestModel: fields[4] as WaterStreakRequestModel,
      waterMoodRequestModel: fields[3] as WaterMoodRequestModel,
      hydrationReminderRequestModel: fields[2] as HydrationReminderRequestModel,
      containerStatsResponseModel:
          fields[1] as WaterContainerStatsResponseModel,
    );
  }

  @override
  void write(BinaryWriter writer, WaterInsight obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.waterLog)
      ..writeByte(1)
      ..write(obj.containerStatsResponseModel)
      ..writeByte(2)
      ..write(obj.hydrationReminderRequestModel)
      ..writeByte(3)
      ..write(obj.waterMoodRequestModel)
      ..writeByte(4)
      ..write(obj.waterStreakRequestModel)
      ..writeByte(5)
      ..write(obj.waterSuggestionRequestModel)
      ..writeByte(6)
      ..write(obj.waterWeatherRequestModel);
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
