import 'package:get/get.dart';
import 'package:shiv_fit/app/data/repository/repository_impl/water_repository_impl.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';

class WaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() {
      return WaterController();
    });
    Get.lazyPut(() {
      return WaterDayDetailsController();
    });
    Get.put<WaterRepository>(WaterRepositoryImpl());
  }
}
