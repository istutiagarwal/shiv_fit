import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/base/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';
import 'package:shiv_fit/app/data/repository/onboarding_repository.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/collection_paths.dart';
import 'package:shiv_fit/app/modules/onboarding/data/request/onboarding_request_model.dart';
import 'package:shiv_fit/service/onboarding_hive_service.dart';
import 'package:shiv_fit/utils/helper/api_exception.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_handler.dart';

class OnboardingRepositoryImpl extends BaseRepository
    implements OnboardingRepository {
  @override
  Future<RepoResponse<OnboardingRequestModel>> saveWaterGoal(
      String selectedWaterGoal) async {
    try {
      await OnboardingHiveService.saveWaterGoalUpdate(selectedWaterGoal);
      final result = await firebaseService.set(
        collectionPath: CollectionPaths.onboardingData,
        data: {
          'waterGoal': selectedWaterGoal,
          'waterGoalLastUpdated': DateTime.now().toIso8601String(),
        },
        docId: AppConstant.devUserId,
      );

      if (result.error != null) {
        return RepoResponse(
          error: APIException(message: result.error.toString()),
        );
      }
      return RepoResponse();
    } catch (e) {
      return RepoResponse(error: ExceptionHandler.handle(e));
    }
  }

  @override
  Future saveSelectedContainers(
      List<ContainerUsageRequestModel> selectedContainersList) async {
    try {
      await OnboardingHiveService.saveSelectedContainers(
          selectedContainersList);
      final result = await firebaseService.set(
        collectionPath: CollectionPaths.onboardingData,
        data: {
          'selectedContainer':
              selectedContainersList.map((e) => e.toJson()).toList(),
          'selectedContainerLastUpdated': DateTime.now().toIso8601String(),
        },
        docId: AppConstant.devUserId,
      );

      if (result.error != null) {
        return RepoResponse(
          error: APIException(message: result.error.toString()),
        );
      }
      return RepoResponse();
    } catch (e) {
      return RepoResponse(error: ExceptionHandler.handle(e));
    }
  }
}
