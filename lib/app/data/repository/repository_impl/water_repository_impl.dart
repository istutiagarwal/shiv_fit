import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/data/models/dto/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/response/water_log_response_dto.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';
import 'package:shiv_fit/app/data/values/collection_paths.dart';
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
}
