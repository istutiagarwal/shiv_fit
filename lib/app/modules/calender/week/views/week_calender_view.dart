import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/week/views/calendar_header_panel.dart';
import 'package:shiv_fit/app/modules/calender/week/views/swipeable_week_view.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_hydration_reminder_card.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WeekCalenderView extends GetView<WeekCalenderController> {
  final WaterController waterController = Get.find<WaterController>();
   WeekCalenderView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < AppDimens.dimens_0) {
                print("inside right gesture dectector");
                controller.onRightGesture(controller.selectedDate.value);
                 waterController.selectedDate.value = controller.selectedDate.value;
                 print("selectedDate ${waterController.selectedDate.value}");
                 print("date ${controller.selectedDate.value}");
                 waterController.loadDataForDate(waterController.selectedDate.value);
              } else if (details.primaryVelocity! > AppDimens.dimens_0) {
                print("inside left gesture dectector");
                controller.onLeftGesture(controller.selectedDate.value);
                waterController.selectedDate.value = controller.selectedDate.value;
                print("selectedDate ${waterController.selectedDate.value}");
                print("date ${controller.selectedDate.value}");
                waterController.loadDataForDate(waterController.selectedDate.value);
              }
            },
            child:ListView(
              padding: const EdgeInsets.all(16),
              children: [
                CalendarHeaderPanel(),
                SwipeableWeekView(),
                // WaterConsumptionChartCard(),
                // //DailyWaterLogsCard(),
                // WaterMoodCard(),
                // WaterSuggestionCard(),
                // WaterStreakCard(),
                WaterHydrationReminderCard(),
                // WaterContainerStatsCard(),
                // WaterWeatherCard(),
              ],
            ),
          ),
        ));
  }
}
