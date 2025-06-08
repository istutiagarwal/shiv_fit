import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/utils/storage/storage_utils.dart';

class WaterDayDetailsController extends WaterController {
  final Rx<DateTime> date = DateTime.now().obs;
  final dailyWaterGoal = 2000;
  late RxDouble currentWaterIntake;

  @override
  void onInit() {
    super.onInit();
    currentWaterIntake = 0.5.obs;
  }

  void onAddWater(double waterDrank) {
    currentWaterIntake.value = currentWaterIntake.value + waterDrank;
  }

  void onLeftOperandClick() {
    date.value = date.value.subtract(const Duration(days: 1));
  }

  void onRightOperandClick() {
    date.value = date.value.add(const Duration(days: 1));
  }

  String getCurrentWaterTaken() {
    return '${(currentWaterIntake.value * dailyWaterGoal).toInt()} ml';
  }
}
