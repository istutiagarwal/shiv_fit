import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';

class WaterDayDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WaterDayDetailsController());
  }
}