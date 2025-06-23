class WaterMoodRequestModel {
  final String dateLabel; // e.g. "Today", "Yesterday", "This Week"
  final String? moodToday;
  final String? moodYesterday;
  final String? bestDayOfWeek;
  final String? worstDayOfWeek;
  final String? bestDayOfMonth;
  final String? worstDayOfMonth;
  final String? badge;
  final String? tip;
  final String? suggestion;
  final String? insight;
  final String? encouragementMessage;
  final String? nextReminderTime;

  WaterMoodRequestModel({
    required this.dateLabel,
    this.moodToday,
    this.moodYesterday,
    this.bestDayOfWeek,
    this.worstDayOfWeek,
    this.bestDayOfMonth,
    this.worstDayOfMonth,
    this.badge,
    this.tip,
    this.suggestion,
    this.insight,
    this.encouragementMessage,
    this.nextReminderTime,
  });

  factory WaterMoodRequestModel.fromJson(Map<String, dynamic> json) => WaterMoodRequestModel(
    dateLabel: json['dateLabel'],
    moodToday: json['moodToday'],
    moodYesterday: json['moodYesterday'],
    bestDayOfWeek: json['bestDayOfWeek'],
    worstDayOfWeek: json['worstDayOfWeek'],
    bestDayOfMonth: json['bestDayOfMonth'],
    worstDayOfMonth: json['worstDayOfMonth'],
    badge: json['badge'],
    tip: json['tip'],
    suggestion: json['suggestion'],
    insight: json['insight'],
    encouragementMessage: json['encouragementMessage'],
    nextReminderTime: json['nextReminderTime'],
  );

  Map<String, dynamic> toJson() => {
    'dateLabel': dateLabel,
    'moodToday': moodToday,
    'moodYesterday': moodYesterday,
    'bestDayOfWeek': bestDayOfWeek,
    'worstDayOfWeek': worstDayOfWeek,
    'bestDayOfMonth': bestDayOfMonth,
    'worstDayOfMonth': worstDayOfMonth,
    'badge': badge,
    'tip': tip,
    'suggestion': suggestion,
    'insight': insight,
    'encouragementMessage': encouragementMessage,
    'nextReminderTime': nextReminderTime,
  };
}
