import 'package:get/get.dart';
import 'package:shiv_fit/app/data/repository/repository_impl/water_repository_impl.dart';
import 'package:shiv_fit/app/data/repository/water_repository.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';

import '../controllers/home_controler.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController();
    });
    Get.lazyPut<WaterDayDetailsController>(() {
      return WaterDayDetailsController();
    });
    Get.put<WaterRepository>(WaterRepositoryImpl());
  }
}
