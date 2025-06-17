import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';

class DateTitleView extends GetView<WeekCalenderController> {
   const DateTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Row(
        children: [
          Text(controller.selectedDate.value.day.toString()),
          Text(DateFormat.MMMM().format(controller.selectedDate.value)),
        ],
      ),
    );
  }
}
