import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/data/models/dto/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/response/onboarding_response_model.dart';
import 'package:shiv_fit/app/data/models/response/water_log_response_dto.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/collection_paths.dart';
import 'package:shiv_fit/service/onboarding_hive_service.dart';
import 'package:shiv_fit/service/water_hive_service.dart';
import 'package:shiv_fit/utils/helper/api_exception.dart';
import 'package:shiv_fit/utils/helper/firebase_exception_handler.dart';

class WaterRepositoryImpl extends BaseRepository implements WaterRepository {
  @override
  Future<RepoResponse<WaterLogResponseDto>> uploadWaterLog(
      WaterLogRequestDto waterLog) async {
    final responseDto = WaterLogResponseDto.fromRequest(
      waterLog,
      timestamp: DateTime.now(),
    );
    await WaterHiveService.addWaterLog(log: responseDto);
    try {
      final result = await firebaseService.upload(
        collectionPath: CollectionPaths.waterLogs,
        data: responseDto.toJson(),
      );

      if (result.error != null) {
        return RepoResponse(
            error: APIException(message: result.error.toString()));
      }
      return RepoResponse(data: null);
    } catch (e) {
      return RepoResponse(error: ExceptionHandler.handle(e));
    }
  }

  @override
  Future<RepoResponse<String>> fetchDailyWaterGoal() async {
    print("inside repo fetchDailyWatergoal");
    try {
      print("inside try");
      final result = await firebaseService.fetch(
        collectionPath: CollectionPaths.onboardingData,
         docId: AppConstant.devUserId,
      );
      print("Firestore fetch result: ${result.data}");
      print("Firestore fetch error: ${result.error}");
      if (result.error != null) {
        print("error");
        print("fetching from hive");
       final localData =  await OnboardingHiveService.getDailyWaterGoal();
        print("fetching from hive ${localData}");
        return RepoResponse(
            error: APIException(message: result.error.toString()),
        data: localData);
      }
      else if(result.data != null){
        print("data is not null");
        final onboardingModel = OnboardingResponseModel.fromJson(result.data!);
        return RepoResponse(data: onboardingModel.waterGoal);
      }
      return RepoResponse();
    } catch (e) {
      print("inside catch");
      return RepoResponse(error: ExceptionHandler.handle(e));
    }
  }
}
