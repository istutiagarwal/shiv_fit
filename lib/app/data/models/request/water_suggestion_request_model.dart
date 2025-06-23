class WaterSuggestionRequestModel {
  final String suggestionText;
  final String? reminderTime; // e.g. "2:30 PM"
  final String? badge;
  final String? motivationalNudge;

  WaterSuggestionRequestModel({
    required this.suggestionText,
    this.reminderTime,
    this.badge,
    this.motivationalNudge,
  });

  factory WaterSuggestionRequestModel.fromJson(Map<String, dynamic> json) {
    return WaterSuggestionRequestModel(
      suggestionText: json['suggestionText'] ?? '',
      reminderTime: json['reminderTime'],
      badge: json['badge'],
      motivationalNudge: json['motivationalNudge'],
    );
  }

  Map<String, dynamic> toJson() => {
    'suggestionText': suggestionText,
    'reminderTime': reminderTime,
    'badge': badge,
    'motivationalNudge': motivationalNudge,
  };
}
