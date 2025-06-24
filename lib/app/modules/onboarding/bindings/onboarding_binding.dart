import 'package:get/get.dart';
import 'package:shiv_fit/app/data/repository/onboarding_repository.dart';
import 'package:shiv_fit/app/data/repository/repository_impl/onboarding_repository_impl.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/widgets/buttons/bordered_choice_box.dart';

class OnboardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() {
      return OnboardingController();
    });
    Get.put<OnboardingRepository>(OnboardingRepositoryImpl());
    Get.lazyPut(() {
      return BorderedChoiceBoxController();
    });
  }

}