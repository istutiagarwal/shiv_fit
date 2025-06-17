import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';

class WeekCalenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() {
      return WeekCalenderController();
    });
  }
}
