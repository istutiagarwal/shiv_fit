class WaterWeatherRequestModel {
  final String? dateLabel;
  final double? currentTemperature;
  final String? weatherCondition;
  final double? humidity;
  final String? hydrationTip;
  final String? suggestion;
  final String? badge;
  final String? lastSimilarWeatherDate;
  final String? lastSimilarWeatherPerformance;
  final double? avgTempWeek;
  final double? avgTempMonth;
  final double? avgHumidityWeek;
  final double? avgHumidityMonth;
  final double? consolidatedTempWeek;
  final double? consolidatedTempMonth;
  final List<String>? hottestDays;
  final List<String>? rainyDays;
  final List<String>? mostHumidDays;
  final String? expectedWeatherNext;
  final String? reminderSuggestion;
  final String? waterIntakeAim;
  final List<double>? temperatureGraph; // For line chart etc.

  WaterWeatherRequestModel({
    this.dateLabel,
    this.currentTemperature,
    this.weatherCondition,
    this.humidity,
    this.hydrationTip,
    this.suggestion,
    this.badge,
    this.lastSimilarWeatherDate,
    this.lastSimilarWeatherPerformance,
    this.avgTempWeek,
    this.avgTempMonth,
    this.avgHumidityWeek,
    this.avgHumidityMonth,
    this.consolidatedTempWeek,
    this.consolidatedTempMonth,
    this.hottestDays,
    this.rainyDays,
    this.mostHumidDays,
    this.expectedWeatherNext,
    this.reminderSuggestion,
    this.waterIntakeAim,
    this.temperatureGraph,
  });
}
