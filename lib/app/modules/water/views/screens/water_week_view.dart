import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/enums/time_range_enum.dart';
import 'package:shiv_fit/app/modules/calender/week/views/week_calender_view.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WaterWeekView extends StatelessWidget {
  const WaterWeekView({super.key});

  @override
  Widget build(BuildContext context) {
    return WeekCalenderView();
  }
}
