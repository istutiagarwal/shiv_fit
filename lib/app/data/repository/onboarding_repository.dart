import 'package:shiv_fit/app/base/base_repository.dart';
import 'package:shiv_fit/app/data/models/dto/repo_response.dart';
import 'package:shiv_fit/app/data/models/request/onboarding_request_model.dart';

abstract class OnboardingRepository extends BaseRepository{
  Future<RepoResponse<OnboardingRequestModel>> saveWaterGoal(String selectedWaterGoal);
}