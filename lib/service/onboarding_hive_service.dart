import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';
import 'package:shiv_fit/app/modules/onboarding/data/request/onboarding_request_model.dart';
import 'package:shiv_fit/app/data/models/response/container_usage_response_model.dart';
import 'package:shiv_fit/app/modules/onboarding/data/response/onboarding_response_model.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/hive_box_names.dart';
import 'package:shiv_fit/service/hive_service.dart';

class OnboardingHiveService {
  OnboardingHiveService();

  static String onboardingKey = AppConstant.devUserId;


  static Future<void> saveWaterGoalUpdate(String selectedWaterGoal) async {
    print("inside hive service");
    final box = await HiveService.openBox<OnboardingRequestModel>(
        HiveBoxNames.onboardingData);
    final current = box.get(onboardingKey);
    print("current ${current}");
    final updatedData = OnboardingRequestModel(
      waterGoalLastUpdated: DateTime.now(),
      waterGoal: selectedWaterGoal,
      selectedContainer: current?.selectedContainer ?? [],
      selectedContainerLastUpdated: current?.selectedContainerLastUpdated ?? DateTime.fromMillisecondsSinceEpoch(0),
    );

    print("updated data $updatedData");

    await box.put(onboardingKey,updatedData);
  }
  static Future<OnboardingResponseModel?> getOnboardingData() async {
    final box = await HiveService.openBox<OnboardingResponseModel>(HiveBoxNames.onboardingData);
    final key = onboardingKey;
    return box.get(key);
  }

  static Future<String?> getDailyWaterGoal() async {
    print("inside getDailyWaterGoal");
    final box = await HiveService.openBox<OnboardingRequestModel>(
      HiveBoxNames.onboardingData,
    );
    final data = box.get(onboardingKey);
    print("goal ${data?.waterGoal}");
    return data?.waterGoal;
  }

  static Future<void> saveSelectedContainers(List<ContainerUsageRequestModel> selectedContainersList) async {
    print("inside hive service");
    print("selectedContainerList $selectedContainersList");
    final box = await HiveService.openBox<OnboardingRequestModel>(
        HiveBoxNames.onboardingData);
    final current = box.get(onboardingKey);
    print("current ${current}");
    final updatedData = OnboardingRequestModel(
      waterGoalLastUpdated:  DateTime.fromMillisecondsSinceEpoch(0),
      waterGoal: current?.waterGoal ?? '',
      selectedContainer: selectedContainersList,
      selectedContainerLastUpdated: DateTime.now(),
    );

    print("updated data $updatedData");

    await box.put(onboardingKey,updatedData);
  }

  static Future<List<ContainerUsageResponseModel>?> getSelectedContainers() async {
    print("inside getSelectedContainers");
    final box = await HiveService.openBox<OnboardingResponseModel>(
      HiveBoxNames.onboardingData,
    );
    final data = box.get(onboardingKey);
    print("goal ${data}");
    return data?.selectedContainer;
  }
}