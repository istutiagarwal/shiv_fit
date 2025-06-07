import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';

class WaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WaterController());
  }
}