class WaterStreakRequestModel {
  final String streakStatus; // e.g., "🔥 5-day streak!"
  final String? tip;
  final String? badge;
  final int maxStreak;
  final String? streakBreakdown; // e.g., "3 days active, 1 day missed"
  final String? nextReminder; // e.g., "8:00 AM"
  final String? message; // e.g., "You're doing amazing!"
  final String? suggestion;

  WaterStreakRequestModel({
    required this.streakStatus,
    this.tip,
    this.badge,
    required this.maxStreak,
    this.streakBreakdown,
    this.nextReminder,
    this.message,
    this.suggestion,
  });

  factory WaterStreakRequestModel.fromJson(Map<String, dynamic> json) {
    return WaterStreakRequestModel(
      streakStatus: json['streakStatus'] ?? '',
      tip: json['tip'],
      badge: json['badge'],
      maxStreak: json['maxStreak'] ?? 0,
      streakBreakdown: json['streakBreakdown'],
      nextReminder: json['nextReminder'],
      message: json['message'],
      suggestion: json['suggestion'],
    );
  }

  Map<String, dynamic> toJson() => {
    'streakStatus': streakStatus,
    'tip': tip,
    'badge': badge,
    'maxStreak': maxStreak,
    'streakBreakdown': streakBreakdown,
    'nextReminder': nextReminder,
    'message': message,
    'suggestion': suggestion,
  };
}
