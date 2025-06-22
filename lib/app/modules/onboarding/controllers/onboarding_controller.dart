import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/models/dto/tile_action.dart';
import 'package:shiv_fit/app/data/repository/onboarding_repository.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';

class OnboardingController extends BaseController<OnboardingRepository> {
  final Rx<String> selectedContainerLabel  = ''.obs;
   List<TileAction>  get tileActions => [
    TileAction(label: "1"),//, onTap: () => print("Open Water Tracker")),
    TileAction(label: "1.5"),// onTap: () => print("Open Mood Tracker")),
    TileAction(label: "2"),// onTap: () => print("Open Step Counter")),
    TileAction(label: "2.5"),// onTap: () => print("Open Sleep Tracker")),
    TileAction(label: "3"),// onTap: () => print("Open Food Log")),
    TileAction(label: "Custom")//, onTap: () => print("Open Workout Log")),
  ];

   List<TileAction> get  waterLogActions => [
    TileAction(
      label: "glass",
      description: "500-1000ml",
      icon: Images.icWaterGlass,
      //onTap: () { selectedContainerLabel.value = "glass"; print("selection glass ${selectedContainerLabel.value = "glass"}");},
    ),
    TileAction(
      label: "hydro flask",
      description: "500-1000ml",
      icon: Images.icHydroFlask,
      //onTap: () { selectedContainerLabel.value = "hydro flask"; print("selection");},
    ),
    TileAction(
      label: "shaker",
      description: "500-1000ml",
      icon: Images.icShaker,
     // onTap: () { selectedContainerLabel.value ="shaker"; print("selection");},
    ),
    TileAction(
      label: "tumbler",
      description: "500-1000ml",
      icon: Images.icTumbler,
      //onTap: () { selectedContainerLabel.value = "tumbler"; print("selection");},
    ),
    TileAction(
      label: "water bottle",
      description: "500-1000ml",
      icon: Images.icWaterBottle,
      //onTap: () { selectedContainerLabel.value = "water bottle"; print("selection");},
    ),
    TileAction(
      label: "custom",
      description: "500-1000ml",
      icon: Images.womenDrinkingWaterOnboarding,
      //onTap: () { selectedContainerLabel.value = "custom"; print("selection");
  )
  ];

  Future<void> handleWaterGoalClick(String selectedWaterGoal) async{
    print("inside onbaording controller");
    final response = await  repository.saveWaterGoal(selectedWaterGoal);
    print("response ${response}");
    if(response.isSuccess){
      print("success data saved");
      Get.snackbar(
        'Success',
        'Weight goal saved successfully 🎯',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.iceyBlue,
        colorText: AppColors.white,
      );
    }
    else{
      print("failure data not saved");
      Get.snackbar(
        'Error',
        response.error?.message ?? 'Something went wrong 😕',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppColors.iceyBlue,
        colorText: AppColors.white,
      );
    }
  }
}
