import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/week/views/week_date_item.dart';

class WeekDateRow extends GetView<WeekCalenderController> {
  const WeekDateRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final weekDates = controller.generateWeekDates(
          controller.getCurrentWeekMonday(controller.selectedDate.value));
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: weekDates
            .map((date) => Expanded(
                  child: WeekDateItem(
                    date: date,
                    isSelected: controller.isSelectedDate(date),
                  ),
                ))
            .toList(),
      );
    });
  }
}
