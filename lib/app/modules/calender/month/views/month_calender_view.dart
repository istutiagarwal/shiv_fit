import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/month/views/month_calender_header.dart';
import 'package:shiv_fit/app/modules/calender/month/views/swipeable_month_view.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_hydration_reminder_card.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class MonthCalenderView extends GetView<MonthCalenderController> {
  final WaterController waterController = Get.find<WaterController>();
   MonthCalenderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < AppDimens.dimens_0) {
                print("inside right gesture dectector");
                controller.getNextMonth(controller.selectedDate.value);
                waterController.selectedDate.value = controller.selectedDate.value;
                print("selectedDate ${waterController.selectedDate.value}");
                print("date ${controller.selectedDate.value}");
                waterController.loadDataForDate(waterController.selectedDate.value);
              } else if (details.primaryVelocity! > AppDimens.dimens_0) {
                print("inside left gesture dectector");
                controller.getPreviousMonth(controller.selectedDate.value);
                waterController.selectedDate.value = controller.selectedDate.value;
                print("selectedDate ${waterController.selectedDate.value}");
                print("date ${controller.selectedDate.value}");
                waterController.loadDataForDate(waterController.selectedDate.value);
              }
            },
            child:ListView(
              padding: const EdgeInsets.all(16),
              children: [
                MonthCalenderHeader(),
                SwipeableMonthView(),
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
