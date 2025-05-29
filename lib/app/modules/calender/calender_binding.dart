import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/calender_controller.dart';

class CalenderBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CalenderController>(() => CalenderController());
  }
}