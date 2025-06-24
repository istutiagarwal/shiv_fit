import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/modules/water/views/cards/daily_water_logs_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_consumption_chart_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_container_stats_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_day_header.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_hydration_reminder_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_mood_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_streak_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_suggestion_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_weather_card.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WaterDayView extends GetView<WaterDayDetailsController> {
  final WaterController waterController = Get.find<WaterController>();
   WaterDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
        onHorizontalDragEnd: (details) {
      if (details.primaryVelocity! < AppDimens.dimens_0) {
        print("inside right gesture dectector");
        controller.onRightOperandClick();
        waterController.selectedDate.value = controller.date.value;
        print("selectedDate ${waterController.selectedDate.value}");
        print("date ${controller.date.value}");
        waterController.loadDataForDate(waterController.selectedDate.value);
      } else if (details.primaryVelocity! > AppDimens.dimens_0) {
        print("inside left gesture dectector");
        controller.onLeftOperandClick();
        waterController.selectedDate.value = controller.date.value;
        print("selectedDate ${waterController.selectedDate.value}");
        print("date ${controller.date.value}");
        waterController.loadDataForDate(waterController.selectedDate.value);
      }
    },
    child:ListView(
          padding: const EdgeInsets.all(16),
          children: [
            WaterDayHeader(),
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

