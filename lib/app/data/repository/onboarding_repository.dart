import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/base/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';
import 'package:shiv_fit/app/modules/onboarding/data/request/onboarding_request_model.dart';

abstract class OnboardingRepository extends BaseRepository{
  Future<RepoResponse<OnboardingRequestModel>> saveWaterGoal(String selectedWaterGoal);

  Future saveSelectedContainers(List<ContainerUsageRequestModel> selectedContainersList) async {}
}