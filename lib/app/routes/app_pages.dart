import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shiv_fit/app/modules/home/bindings/home_binding.dart';
import 'package:shiv_fit/app/modules/home/views/home_view.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
