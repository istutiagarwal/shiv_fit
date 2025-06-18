import 'package:hive_flutter/adapters.dart';
import 'package:shiv_fit/app/data/models/request/water_insight.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/response/water_log_response_dto.dart';

class HiveAdapterRegistrar {
  static void registerAll() {
    Hive
      ..registerAdapter(WaterInsightAdapter())
      ..registerAdapter(WaterLogRequestDtoAdapter())
      ..registerAdapter(WaterLogResponseDtoAdapter());
  }
}
