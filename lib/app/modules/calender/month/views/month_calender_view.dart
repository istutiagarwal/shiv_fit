import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/month/views/month_calender_header.dart';
import 'package:shiv_fit/app/modules/calender/month/views/swipeable_month_view.dart';

class MonthCalenderView extends StatelessWidget {
  final MonthCalenderController controller = Get.put(MonthCalenderController());

  MonthCalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MonthCalenderHeader(),
        SwipeableMonthView(),
      ],
    );
  }
}
