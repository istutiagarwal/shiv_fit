import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/modules/water/views/cards/daily_water_logs_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_container_stats_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_day_header.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_hydration_reminder_card.dart';

class WaterDayView extends GetView<WaterDayDetailsController> {
  const WaterDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            WaterDayHeader(),
            //
            // WaterConsumptionChartCard(),
            DailyWaterLogsCard(
              icon: Images.icShaker,
              volume: "250ml",
              timeStamp: "02:36 Pm",
            ),
            //WaterHydrationReminderCard(),
            WaterContainerStatsCard(),
          ],
        ),
      ),
    );
  }
}
