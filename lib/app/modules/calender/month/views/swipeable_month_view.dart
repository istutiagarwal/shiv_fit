import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/month/views/calendar_grid.dart';

class SwipeableMonthView extends GetView<MonthCalenderController> {
  const SwipeableMonthView({super.key});

  @override
  Widget build(BuildContext context) {
    return CalendarGrid();
  }
}
