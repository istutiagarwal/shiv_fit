import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

import 'week_date_row.dart';

class SwipeableWeekView extends GetView<WeekCalenderController> {
  const SwipeableWeekView({super.key});

  @override
  Widget build(BuildContext context) {
    return WeekDateRow();
  }
}
