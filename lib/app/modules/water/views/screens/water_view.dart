import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/enums/time_range_enum.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/modules/water/views/screens/water_month_view.dart';
import 'package:shiv_fit/app/modules/water/views/screens/water_week_view.dart';
import 'package:shiv_fit/widgets/crousal/time_range_selector.dart';
import 'package:shiv_fit/widgets/crousal/time_range_selector_controller.dart';

import 'water_day_view.dart';

class WaterView extends StatelessWidget {
  final TimeRangeSelectorController timeRangeController = Get.put(TimeRangeSelectorController());
  final WaterDayDetailsController waterController = Get.put(WaterDayDetailsController());

  WaterView({super.key,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TimeRangeSelector(),
          Obx(() {
            switch(timeRangeController.selectedRange.value){
              case TimeRangeEnum.day:
                return const WaterDayView();
              case TimeRangeEnum.month:
                return const WaterMonthView();
              case TimeRangeEnum.week:
                return const WaterWeekView();
            }
          }),
        ],
      )),
    );
  }
}