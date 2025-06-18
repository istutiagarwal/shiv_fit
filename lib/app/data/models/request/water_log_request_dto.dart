import 'package:hive/hive.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

part '../hive_adapters/water_log_request_dto.g.dart';

@HiveType(typeId: HiveTypeIds.waterLogRequest)
class WaterLogRequestDto {
  @HiveField(0)
  final int volume;
  @HiveField(1)
  final String containerType;

  WaterLogRequestDto({required this.volume, required this.containerType});

  @override
  String toString() {
    return 'WaterLog(volume: $volume, container: $containerType,)';
  }

  Map<String,dynamic> toJson() => {'volume' : volume ,'container' : containerType};
}
