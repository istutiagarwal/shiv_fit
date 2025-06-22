import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/data/models/dto/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/onboarding_request_model.dart';
import 'package:shiv_fit/app/data/repository/onboarding_repository.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/collection_paths.dart';
import 'package:shiv_fit/service/onboarding_hive_service.dart';
import 'package:shiv_fit/utils/helper/api_exception.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_handler.dart';

class OnboardingRepositoryImpl extends BaseRepository implements OnboardingRepository {
  @override
  Future<RepoResponse<OnboardingRequestModel>> saveWaterGoal(String selectedWaterGoal) async{
    print("inside repo saveWeightGoal");
    try{
      print("inside try");
      await OnboardingHiveService.saveWaterGoalUpdate(selectedWaterGoal);
      final result = await firebaseService.set(
        collectionPath: CollectionPaths.onboardingData,
        data: {
          'waterGoal': selectedWaterGoal,
          'waterGoalLastUpdated': DateTime.now().toIso8601String(),
        }, docId: AppConstant.devUserId,
      );

      if (result.error != null) {
        print("error");
        return RepoResponse(
          error: APIException(message: result.error.toString()),
        );
      }
print("success");
      return RepoResponse();
    } catch (e) {
      print("catch");
      return RepoResponse(error: ExceptionHandler.handle(e));
    }

  }

}