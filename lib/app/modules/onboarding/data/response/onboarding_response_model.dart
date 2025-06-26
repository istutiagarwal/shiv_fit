import 'package:hive/hive.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/response/container_usage_response_model.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';
import 'package:shiv_fit/widgets/text_field/custom_text_field.dart';

 part  '../hive_adapters/onboarding_response_model.g.dart';

@HiveType(typeId: HiveTypeIds.onboardingResponseData)
class OnboardingResponseModel {
  @HiveField(0)
  final DateTime waterGoalLastUpdated;

  @HiveField(1)
  final String waterGoal;

  @HiveField(2)
  final DateTime selectedContainerLastUpdated;

  @HiveField(3)
  final List<ContainerUsageResponseModel> selectedContainer;

  OnboardingResponseModel({
    required this.waterGoalLastUpdated,
    required this.waterGoal,
    required this.selectedContainer,
    required this.selectedContainerLastUpdated,
  });

  factory OnboardingResponseModel.fromJson(Map<String, dynamic> json) {
    return OnboardingResponseModel(
      waterGoal: json['waterGoal'].toString() ?? '0',
      waterGoalLastUpdated: DateTime.tryParse(json['waterGoalLastUpdated'] ?? '') ?? DateTime.now(),
      selectedContainerLastUpdated: DateTime.tryParse(json['selectedContainerLastUpdated'] ?? '') ?? DateTime.now(),
      selectedContainer: (json['selectedContainer'] as List<dynamic>? ?? [])
          .map((e) => ContainerUsageResponseModel.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'waterGoalLastUpdated': waterGoalLastUpdated.toIso8601String(),
      'waterGoal': waterGoal,
      'selectedContainerLastUpdated': selectedContainerLastUpdated.toIso8601String(),
      'selectedContainer': selectedContainer.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() =>
      'OnboardingResponseModel(waterGoalLastUpdated: $waterGoalLastUpdated, '
          'waterGoal: $waterGoal, '
          'selectedContainerLastUpdated: $selectedContainerLastUpdated, '
          'selectedContainer: $selectedContainer)';
}
