import 'package:hive/hive.dart';
import 'package:shiv_fit/app/data/models/request/water_hydration_reminder_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/request/water_mood_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_streak_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_suggestion_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_weather_request_model.dart';
import 'package:shiv_fit/app/data/models/response/water_container_stats_response_model.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

part '../hive_adapters/water_insight.g.dart';

@HiveType(typeId: HiveTypeIds.waterInsights)
class WaterInsight {
  @HiveField(0)
  WaterLogRequestDto waterLog;
  @HiveField(1)
  WaterContainerStatsResponseModel containerStatsResponseModel;
  @HiveField(2)
  HydrationReminderRequestModel hydrationReminderRequestModel;
  @HiveField(3)
  WaterMoodRequestModel waterMoodRequestModel;
  @HiveField(4)
  WaterStreakRequestModel waterStreakRequestModel;
  @HiveField(5)
  WaterSuggestionRequestModel waterSuggestionRequestModel;
  @HiveField(6)
  WaterWeatherRequestModel waterWeatherRequestModel;

  WaterInsight({
    required this.waterLog,
    required this.waterWeatherRequestModel,
    required this.waterSuggestionRequestModel,
    required this.waterStreakRequestModel,
    required this.waterMoodRequestModel,
    required this.hydrationReminderRequestModel,
    required this.containerStatsResponseModel,
  });
}
