import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class WaterContainerStatsCard extends GetView<WaterDayDetailsController> {
  const WaterContainerStatsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.dimens_16),
      margin: EdgeInsets.all(AppDimens.dimens_14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: AppColors.iceyBlue,
          width: AppDimens.dimens_1,
        ),
        borderRadius: BorderRadius.circular(AppDimens.dimens_30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.stacked_bar_chart,
                color: AppColors.yellow,
              ),
              Text(
                AppConstant.water.containerUsage,
                style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
              ),
            ],
          ),
          SizedBox(height: AppDimens.dimens_12),

          // Table Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppConstant.water.container),
              Text(AppConstant.water.usage),
              Text(AppConstant.water.volume),
              Text(AppConstant.water.count),
            ],
          ),
          const Divider(),
          Column(
            children: List.generate(controller.containers.length, (index) {
              final container = controller.containers[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // 1. Container name
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            container.containerName!,
                          )),
                    ),

                    // 2. Percentage used
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(container.percentageUsed!)),
                    ),

                    // 3. Total volume
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(container.volume!)),
                    ),

                    // 4. Count
                    Expanded(
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(container.count.toString())),
                    ),
                  ],
                ),
              );
            }),
          ),

          // Data Rows

          SizedBox(height: AppDimens.dimens_12),

          // Most Used
          Row(
            children: [
              Icon(Icons.stars, color: Colors.orange),
              SizedBox(width: AppDimens.dimens_8),
              Text(
                "Most used:",
                style:
                    Styles.blackRegular(AppDimens.dimens_14, AppColors.black),
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_10),

          // Tip
          Row(
            children: [
              Icon(Icons.lightbulb_outline, color: AppColors.yellow),
              SizedBox(width: AppDimens.dimens_8),
              Expanded(
                child: Text(
                  "Tip: ",
                  style: Styles.blackRegular(
                      AppDimens.dimens_14, AppColors.oliveGreen),
                ),
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_10),

          // Suggestion
          Row(
            children: [
              Icon(Icons.bubble_chart, color: AppColors.grey),
              SizedBox(width: AppDimens.dimens_8),
              Expanded(
                child: Text(
                  "Suggestion: ",
                  style: Styles.blackRegular(
                      AppDimens.dimens_14, AppColors.iceyBlue),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Icon(Icons.gpp_bad_sharp, color: AppColors.iceyBlue),
              SizedBox(width: AppDimens.dimens_8),
              Expanded(
                child: Text(
                  "You did it.",
                  style: Styles.blackRegular(
                      AppDimens.dimens_14, AppColors.iceyBlue),
                ),
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_16),

          // CTA
          Align(
            alignment: Alignment.center,
            child: PrimaryActionButton(
                label: AppConstant.water.addWater,
                onPressed: () {},
                icon: Icons.add),
          )
        ],
      ),
    );
  }
}
