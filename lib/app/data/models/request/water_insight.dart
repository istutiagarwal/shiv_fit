import 'package:hive/hive.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

part '../hive_adapters/water_insight.g.dart';

@HiveType(typeId: HiveTypeIds.waterInsights)
class WaterInsight {
  @HiveField(0)
  WaterLogRequestDto waterLog;

  WaterInsight({
    required this.waterLog,
  });
}
