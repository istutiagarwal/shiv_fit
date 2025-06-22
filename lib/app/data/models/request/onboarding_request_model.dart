import 'package:hive/hive.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/utils/hive_type_ids.dart';

part '../hive_adapters/onboarding_request_model.g.dart';

@HiveType(typeId: HiveTypeIds.onboardingRequestData)
class OnboardingRequestModel {
  @HiveField(0)
  DateTime waterGoalLastUpdated;
  @HiveField(1)
  String waterGoal;
  @HiveField(2)
  DateTime selectedContainerLastUpdated;
  @HiveField(3)
  List<WaterLogRequestDto> selectedContainer;

  OnboardingRequestModel({
    required this.waterGoalLastUpdated,
    required this.waterGoal,
    required this.selectedContainer,
    required this.selectedContainerLastUpdated,
  });

  @override
  String toString() =>
      'OnboardingRequestModel(waterGoalLastUpdated : $waterGoalLastUpdated,'
      'waterGoal : $waterGoal,'
      'selectedContainer : $selectedContainer,'
      'selectedContainerLastUpdated : $selectedContainerLastUpdated'
      ')';

  Map<String, dynamic> toJson() => {
        'waterGoal': waterGoal,
        'selectedContainerLastUpdated': selectedContainerLastUpdated,
        'selectedContainer': selectedContainer,
        'waterGoalLastUpdated': waterGoalLastUpdated
      };

  OnboardingRequestModel copyWith({
    DateTime? waterGoalLastUpdated,
    String? waterGoal,
    DateTime? selectedContainerLastUpdated,
    List<WaterLogRequestDto>? selectedContainer,
  }) {
    return OnboardingRequestModel(
      waterGoalLastUpdated: waterGoalLastUpdated ?? this.waterGoalLastUpdated,
      waterGoal: waterGoal ?? this.waterGoal,
      selectedContainerLastUpdated: selectedContainerLastUpdated ?? this.selectedContainerLastUpdated,
      selectedContainer: selectedContainer ?? this.selectedContainer,
    );
  }
}
