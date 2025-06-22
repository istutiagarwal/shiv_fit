import 'package:flutter/material.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/charts/custom_circular_progress_indicator.dart';

class WaterHydrationReminderCard extends StatelessWidget {
  const WaterHydrationReminderCard({super.key});

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
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.alarm, color: AppColors.red),
                  SizedBox(width: AppDimens.dimens_8),
                  Text(
                    AppConstant.water.hydrationReminder,
                    style:
                        Styles.blackBold(AppDimens.dimens_18, AppColors.black),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_16),

          // Progress Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3 of 5 reminders done"),
                  Text("60% complete", style: TextStyle(color: Colors.blue)),
                ],
              ),
              SizedBox(width: 16),
              CustomCircularProgressIndicator()
            ],
          ),

          SizedBox(height: AppDimens.dimens_16),

          // Reminder Info
          Row(
            children: [
              Icon(
                Icons.timer,
                color: AppColors.black,
              ),
              SizedBox(
                width: AppDimens.dimens_8,
              ),
              Text("Next reminder : 2:30 PM",
                  style:
                      Styles.blackBold(AppDimens.dimens_16, AppColors.black)),
            ],
          ),

          SizedBox(height: AppDimens.dimens_8),
          Row(
            children: [
              Icon(
                Icons.schedule,
                color: AppColors.black,
              ),
              SizedBox(
                width: AppDimens.dimens_8,
              ),
              Text("Last reminder : 2:30 PM",
                  style:
                      Styles.blackBold(AppDimens.dimens_16, AppColors.black)),
            ],
          ),

          SizedBox(height: AppDimens.dimens_8),
          // Missed reminders
          Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: AppColors.red,
              ),
              SizedBox(
                width: AppDimens.dimens_8,
              ),
              Text("Missed reminder : 2:30 PM",
                  style:
                      Styles.blackBold(AppDimens.dimens_16, AppColors.black)),
            ],
          ),

          SizedBox(height: AppDimens.dimens_12),

          // Tip Section
          Row(
            children: [
              Icon(
                Icons.lightbulb_outline,
                color: AppColors.yellow,
              ),
              Expanded(
                child: Text(
                  "Tip: Try sipping water every 30 mins instead of gulping.",
                  maxLines: 2,
                  style: Styles.blackRegular(
                      AppDimens.dimens_14, AppColors.oliveGreen),
                ),
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_12),

          Row(
            children: [
              Icon(
                Icons.bubble_chart,
                color: AppColors.grey,
              ),
              Expanded(
                child: Text(
                  "Suggestion: Try sipping water every 30 mins instead of gulping.",
                  maxLines: 2,
                  style: Styles.blackRegular(
                    AppDimens.dimens_14,
                    AppColors.iceyBlue,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: AppDimens.dimens_12),
          // CTA Button
          Align(
            alignment: Alignment.center,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_alarm),
              label: Text(AppConstant.water.addHydrationReminder),
            ),
          )
        ],
      ),
    );
  }
}
