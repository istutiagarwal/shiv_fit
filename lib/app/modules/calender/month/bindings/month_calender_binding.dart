import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';

class MonthCalenderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MonthCalenderController>(() {
      return MonthCalenderController();
    });
  }
}
