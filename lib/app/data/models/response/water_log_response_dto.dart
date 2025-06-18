import 'package:hive/hive.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

part '../hive_adapters/water_log_response_dto.g.dart';

@HiveType(typeId: HiveTypeIds.waterLogResponse)
class WaterLogResponseDto {
  @HiveField(0)
  final int volume;
  @HiveField(1)
  final String containerType;
  @HiveField(2)
  final DateTime timestamp;

  WaterLogResponseDto({
    required this.volume,
    required this.containerType,
    required this.timestamp,
  });

  factory WaterLogResponseDto.fromRequest(
    WaterLogRequestDto request, {
    required DateTime timestamp,
  }) {
    return WaterLogResponseDto(
      volume: request.volume,
      containerType: request.containerType,
      timestamp: timestamp,
    );
  }

  Map<String, dynamic> toJson() => {
        'volume': volume,
        'containerType': containerType,
        'timestamp': timestamp.toString(),
      };

  @override
  String toString() {
    return 'WaterLogResponseDto(volume: $volume, containerType: $containerType, timestamp: $timestamp)';
  }
}
