import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/models/request/water_hydration_reminder_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_insight.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/request/water_mood_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_streak_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_suggestion_request_model.dart';
import 'package:shiv_fit/app/data/models/request/water_weather_request_model.dart';
import 'package:shiv_fit/app/data/models/response/water_container_stats_response_model.dart';

class WaterController extends BaseController {
  final Map<DateTime, WaterInsight> mockWeeklyData = {
    DateTime(2025, 6, 9): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 250, containerType: "Glass"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Sunny", currentTemperature: 32, humidity: 40),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Carry a water bottle.", suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: '1', streakStatus: '2', maxStreak: 4),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Energetic", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 2),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "glass"),
    ),
    DateTime(2025, 6, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 300, containerType: "Bottle"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Cloudy", currentTemperature: 28, humidity: 55),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Drink warm water in the morning.",
          suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: '2', streakStatus: '5', maxStreak: 10),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Calm", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 10),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "stanley"),
    ),
    DateTime(2025, 5, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 400, containerType: "Cup"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Rainy", currentTemperature: 24, humidity: 70),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Limit caffeine, drink more water.",
          suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: '3', streakStatus: '6', maxStreak: 67),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Relaxed", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 2),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "bottle"),
    ),
    DateTime(2025, 7, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 500, containerType: "Mug"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Sunny", currentTemperature: 33, humidity: 45),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Refill your bottle after lunch.",
          suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: "tuesday", streakStatus: '3', maxStreak: 89),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Focused", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 2),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "glass"),
    ),
    DateTime(2025, 8, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 600, containerType: "Bottle"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Cloudy", currentTemperature: 30, humidity: 60),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Track your sips!", suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: '5', streakStatus: '200', maxStreak: 500),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Happy", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 22),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "shaker"),
    ),
    DateTime(2025, 4, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 700, containerType: "Glass"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Rainy", currentTemperature: 25, humidity: 75),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Hydrate after your walk.", suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: '6', streakStatus: '56', maxStreak: 200),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Lazy", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 12),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "glass"),
    ),
    DateTime(2025, 3, 1): WaterInsight(
      waterLog: WaterLogRequestDto(volume: 800, containerType: "Jug"),
      waterWeatherRequestModel: WaterWeatherRequestModel(
          weatherCondition: "Sunny", currentTemperature: 35, humidity: 50),
      waterSuggestionRequestModel: WaterSuggestionRequestModel(
          motivationalNudge: "Don’t wait till you’re thirsty.",
          suggestionText: ''),
      waterStreakRequestModel: WaterStreakRequestModel(
          streakBreakdown: 'wednessay', streakStatus: '20', maxStreak: 100),
      waterMoodRequestModel:
          WaterMoodRequestModel(moodToday: "Motivated", dateLabel: ''),
      hydrationReminderRequestModel:
          HydrationReminderRequestModel(remindersMissed: 10),
      containerStatsResponseModel:
          WaterContainerStatsResponseModel(mostUsedContainer: "shaker"),
    ),
  };
  final Rx<WaterInsight?> selectedInsight = Rx<WaterInsight?>(null);

  DateTime now = DateTime.now();
  late Rx<DateTime> selectedDate;

  DateTime getTodayDate() => DateTime(now.year, now.month, now.day);

  @override
  void onInit() {
    super.onInit();
    selectedDate = Rx<DateTime>(getTodayDate());
    loadDataForDate(selectedDate.value);
  }

  void loadDataForDate(DateTime date) {
    selectedDate.value = date;

    // Normalize date to remove time for accurate key match
    final normalizedDate = DateTime(date.year, date.month, date.day);

    if (mockWeeklyData.containsKey(normalizedDate)) {
      selectedInsight.value = mockWeeklyData[normalizedDate];
    } else {
      selectedInsight.value = null; // No data for this day
    }
  }
}
