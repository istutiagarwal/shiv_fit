import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';

class MonthCalenderHeader extends GetView<MonthCalenderController> {
  const MonthCalenderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateFormat.MMMM().format(controller.selectedDate.value)),
          Text(controller.selectedDate.value.year.toString()),
        ],
      ),
    );
  }
}
