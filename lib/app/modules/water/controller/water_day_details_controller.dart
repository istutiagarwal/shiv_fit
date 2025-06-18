import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/models/dto/handle_error.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';

class WaterDayDetailsController extends BaseController<WaterRepository> {
  final Rx<DateTime> date = DateTime.now().obs;
  final dailyWaterGoal = 2000;
  late RxDouble currentWaterIntake;

  @override
  void onInit() {
    super.onInit();
    currentWaterIntake = 0.5.obs;
  }

  Future<void> onAddWater(WaterLogRequestDto waterLog) async {
    final response = await repository.uploadWaterLog(waterLog);
    if (response.data != null) {
      //currentWaterIntake.value = currentWaterIntake.value + response.data.;
    } else {
      HandleError.handleError(response.error);
    }
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
