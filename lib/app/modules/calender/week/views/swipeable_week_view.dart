import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';

import 'WeekDateRow.dart';

class SwipeableWeekView extends StatelessWidget {
  final WeekCalenderController controller = Get.put(WeekCalenderController());
  SwipeableWeekView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          controller.onRightGesture(controller.selectedDate.value);
        } else if (details.primaryVelocity! > 0) {
          controller.onLeftGesture(controller.selectedDate.value);
        }
      },
      child: WeekDateRow(),
    );
  }
}
