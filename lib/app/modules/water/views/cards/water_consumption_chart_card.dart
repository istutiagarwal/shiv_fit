import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class WaterConsumptionChartCard extends GetView<WaterDayDetailsController> {
  const WaterConsumptionChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_32),
      child: CircularPercentIndicator(
        radius: AppDimens.dimens_100,
        percent: controller.currentWaterIntake.value,
        center: Text(
          controller.getCurrentWaterTaken(),
          style: Styles.blackBold(AppDimens.dimens_32, AppColors.black),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        lineWidth: AppDimens.dimens_10,
        progressColor: AppColors.iceyBlue,
        backgroundColor: AppColors.grey,
        animateFromLastPercent: true,
        animation: true,
        animateToInitialPercent: true,
      ),
    );
  }
}
