import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/base/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/models/response/container_usage_response_model.dart';
import 'package:shiv_fit/app/modules/onboarding/data/response/onboarding_response_model.dart';
import 'package:shiv_fit/app/data/models/response/water_log_response_dto.dart';

abstract class WaterRepository extends BaseRepository {
  Future<RepoResponse<WaterLogResponseDto>> uploadWaterLog(
      WaterLogRequestDto dto);

  Future<RepoResponse<String>> fetchDailyWaterGoal();

  Future<RepoResponse<List<ContainerUsageResponseModel>>> fetchSelectedContainersList();
}
