import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shiv_fit/app/data/values/animations.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/modules/water/views/screens/water_view.dart';
import 'package:shiv_fit/app/routes/app_routes.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class WaterCard extends GetView<WaterDayDetailsController>{
  const WaterCard({super.key});

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
        borderRadius: BorderRadius.circular(
            AppDimens.dimens_30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstant.water.hydration,
                style: Styles.blackBold(AppDimens.dimens_22, AppColors.black),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(Routes.water);
                },
                icon: Icon(Icons.chevron_right),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx((){
                   return Text(
                      '2L/${controller.dailyWaterGoal.value}',
                      style:
                      Styles.blackBold(AppDimens.dimens_18, AppColors.black),
                    );
                  }),
                  Row(
                    children: [
                      Text(AppConstant.water.today),
                      SizedBox(
                        width: AppDimens.dimens_20,
                      ),
                      Text("3-day Streak"),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: AppDimens.dimens_18,
                          left: AppDimens.dimens_0,
                        ),
                        child: Lottie.asset(
                          Animations.acStreakFire,
                          width: AppDimens.dimens_50,
                          height: AppDimens.dimens_40,
                          repeat: true,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Image.asset(
                Images.womenDrinkingWater,
                width: AppDimens.dimens_100,
                height: AppDimens.dimens_100,
              ),
            ],
          ),
          Text(
            AppConstant.water.timeToRefill,
            style: Styles.blackBold(AppDimens.dimens_14, AppColors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstant.water.waterIntake,
                style: Styles.blackBold(
                  AppDimens.dimens_14,
                  AppColors.black,
                ),
              ),
              Text(
                "1.2L/3L",
                style: Styles.blackBold(AppDimens.dimens_14, AppColors.grey),
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.dimens_6,
          ),
          LinearProgressIndicator(
            value: 0.6, // 60% progress
            backgroundColor: AppColors.mistGrey,
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          PrimaryActionButton(
            icon: Icons.add,
            label: AppConstant.water.addWater,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
