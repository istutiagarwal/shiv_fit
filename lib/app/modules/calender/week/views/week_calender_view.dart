import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/week/views/calendar_header_panel.dart';
import 'package:shiv_fit/app/modules/calender/week/views/swipeable_week_view.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WeekCalenderView extends GetView<WeekCalenderController> {
  const WeekCalenderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_100),
      child: Column(
        children: [
          const CalendarHeaderPanel(),
          SwipeableWeekView(),
        ],
      ),
    );
  }
}
