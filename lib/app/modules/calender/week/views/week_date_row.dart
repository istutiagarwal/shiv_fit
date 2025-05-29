import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/week/views/WeekDateItem.dart';

class WeekDateRow extends StatelessWidget {
  final WeekCalenderController controller = Get.put(WeekCalenderController());

  WeekDateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final weekDates = controller.generateWeekDates(
          controller.getCurrentWeekMonday(controller.selectedDate.value));
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: weekDates
            .map((date) => WeekDateItem(
                  date: date,
                  isSelected: controller.isSelectedDate(date),
                  controller: controller,
                ))
            .toList(),
      );
    });
  }
}
