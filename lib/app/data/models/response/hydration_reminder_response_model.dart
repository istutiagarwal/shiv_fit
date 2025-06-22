import 'package:hive/hive.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

@HiveType(typeId: HiveTypeIds.hydrationReminderResponseData)
class HydrationReminderResponseModel {
  @HiveField(0)
  final String? dateLabel;
  @HiveField(1)
  final int? totalRemindersSent;
  @HiveField(2)
  final int? remindersMissed;
  @HiveField(3)
  final String? lastReminderTime;
  @HiveField(4)
  final String? nextReminderTime;
  @HiveField(5)
  final String? bestDay;
  @HiveField(6)
  final String? tip;
  @HiveField(7)
  final String? progressMessage;
  @HiveField(8)
  final String? hydrationBadge;
  @HiveField(9)
  final String? weekAnalysisText;
  @HiveField(10)
  final String? monthAnalysisText;
  @HiveField(11)
  final String? mostSuccessfulReminder;
  @HiveField(12)
  final bool? isReminderNeeded;
  @HiveField(13)
  final String? plannedReminders;

  HydrationReminderResponseModel(
      {this.dateLabel,
      this.remindersMissed,
      this.lastReminderTime,
      this.bestDay,
      this.tip,
      this.progressMessage,
      this.hydrationBadge,
      this.isReminderNeeded,
      this.monthAnalysisText,
      this.mostSuccessfulReminder,
      this.nextReminderTime,
      this.plannedReminders,
      this.totalRemindersSent,
      this.weekAnalysisText});

  @override
  String toString() => 'HydrationReminderResponseModel('
      'dateLabel: $dateLabel, '
      'remindersMissed: $remindersMissed, '
      'lastReminderTime: $lastReminderTime, '
      'bestDay: $bestDay, '
      'tip: $tip, '
      'progressMessage: $progressMessage, '
      'hydrationBadge: $hydrationBadge, '
      'isReminderNeeded: $isReminderNeeded, '
      'monthAnalysisText: $monthAnalysisText, '
      'mostSuccessfulReminder: $mostSuccessfulReminder, '
      'nextReminderTime: $nextReminderTime, '
      'plannedReminders: $plannedReminders, '
      'totalRemindersSent: $totalRemindersSent, '
      'weekAnalysisText: $weekAnalysisText'
      ')';

  Map<String, dynamic> toJson() => {
        'dateLabel': dateLabel,
        'remindersMissed': remindersMissed,
        'lastReminderTime': lastReminderTime,
        'bestDay': bestDay,
        'tip': tip,
        'progressMessage': progressMessage,
        'hydrationBadge': hydrationBadge,
        'isReminderNeeded': isReminderNeeded,
        'monthAnalysisText': monthAnalysisText,
        'mostSuccessfulReminder': mostSuccessfulReminder,
        'nextReminderTime': nextReminderTime,
        'plannedReminders': plannedReminders,
        'totalRemindersSent': totalRemindersSent,
        'weekAnalysisText': weekAnalysisText,
      };

  factory HydrationReminderResponseModel.fromJson(Map<String, dynamic> json) {
    return HydrationReminderResponseModel(
        dateLabel: json['dateLabel'],
        totalRemindersSent: json['totalRemindersSent'],
        remindersMissed: json['remindersMissed'],
        lastReminderTime: json['lastReminderTime'],
        nextReminderTime: json['nextReminderTime'],
        bestDay: json['bestDay'],
        tip: json['tip'],
        progressMessage: json['progressMessage'],
        hydrationBadge: json['hydrationBadge'],
        weekAnalysisText: json['weekAnalysisText'],
        monthAnalysisText: json['monthAnalysisText'],
        mostSuccessfulReminder: json['mostSuccessfulReminder'],
        isReminderNeeded: json['isReminderNeeded'],
        plannedReminders: json['plannedReminders']);
  }

  HydrationReminderResponseModel copyWith({
    String? dateLabel,
    int? remindersMissed,
    String? lastReminderTime,
    String? bestDay,
    String? tip,
    String? progressMessage,
    String? hydrationBadge,
    bool? isReminderNeeded,
    String? monthAnalysisText,
    String? weekAnalysisText,
    String? mostSuccessfulReminder,
    String? nextReminderTime,
    String? plannedReminders,
    int? totalRemindersSent,
  }) {
    return HydrationReminderResponseModel(
      dateLabel: dateLabel ?? this.dateLabel,
      remindersMissed: remindersMissed ?? this.remindersMissed,
      lastReminderTime: lastReminderTime ?? this.lastReminderTime,
      bestDay: bestDay ?? this.bestDay,
      tip: tip ?? this.tip,
      progressMessage: progressMessage ?? this.progressMessage,
      hydrationBadge: hydrationBadge ?? this.hydrationBadge,
      isReminderNeeded: isReminderNeeded ?? this.isReminderNeeded,
      monthAnalysisText: monthAnalysisText ?? this.monthAnalysisText,
      weekAnalysisText: weekAnalysisText ?? this.weekAnalysisText,
      mostSuccessfulReminder:
          mostSuccessfulReminder ?? this.mostSuccessfulReminder,
      nextReminderTime: nextReminderTime ?? this.nextReminderTime,
      plannedReminders: plannedReminders ?? this.plannedReminders,
      totalRemindersSent: totalRemindersSent ?? this.totalRemindersSent,
    );
  }
}
