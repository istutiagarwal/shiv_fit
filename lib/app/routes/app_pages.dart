import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shiv_fit/app/modules/calender/calender_binding.dart';
import 'package:shiv_fit/app/modules/calender/calender_view.dart';
import 'package:shiv_fit/app/modules/calender/month/bindings/month_calender_binding.dart';
import 'package:shiv_fit/app/modules/calender/month/views/month_calender_view.dart';
import 'package:shiv_fit/app/modules/calender/week/bindings/week_calender_bindings.dart';
import 'package:shiv_fit/app/modules/calender/week/views/week_calender_view.dart';
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
    GetPage(
      name: Routes.weekCalender,
      page: () => WeekCalenderView(),
      binding: WeekCalenderBinding(),
    ),
    GetPage(
      name: Routes.monthCalender,
      page: () => MonthCalenderView(),
      binding: MonthCalenderBinding(),
    ),
    GetPage(
      name: Routes.calender,
      page: () => CalenderView(),
      binding: CalenderBinding(),
    )
  ];
}
