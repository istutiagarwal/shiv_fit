import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/app/modules/onboarding/views/onboarding/bottom_sheets/custom_water_intake_goal_bottom_sheet.dart';
import 'package:shiv_fit/app/modules/onboarding/views/preferred_container_card.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/bordered_choice_box.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class WaterGoalOnboardingCard extends GetView<OnboardingController> {
  final BorderedChoiceBoxController borderedChoiceBoxController =
      Get.find<BorderedChoiceBoxController>();

  WaterGoalOnboardingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimens.dimens_20,
            vertical: AppDimens.dimens_20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppConstant.water.waterIntakeGoal,
                style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
              ),
              Text(
                AppConstant.water.dailyWaterQuestion,
                textAlign: TextAlign.center,
                style: Styles.blackBold(AppDimens.dimens_24, AppColors.black),
              ),
              Text(
                AppConstant.water.hydrationGoalDescription,
                textAlign: TextAlign.center,
                style:
                    Styles.blackRegular(AppDimens.dimens_14, AppColors.black),
              ),
              Image.asset(
                Images.womenDrinkingWaterOnboarding,
                width: AppDimens.dimens_150,
                height: AppDimens.dimens_250,
              ),
              GridView.count(
                crossAxisCount: Numbers.three,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(Numbers.eight),
                crossAxisSpacing: Numbers.twelve.toDouble(),
                mainAxisSpacing: Numbers.twelve.toDouble(),
                children: List.generate(controller.tileActions.length, (index) {
                  final tile = controller.tileActions[index];
                  return BorderedChoiceBox(
                    label: tile.label,
                    onPressed: () {
                      if (index ==
                          controller.tileActions.length - Numbers.one) {
                        borderedChoiceBoxController.selectedIndex.value = index;
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) =>
                                const CustomWaterIntakeGoalBottomSheet(),
                            isScrollControlled: true,
                          );
                        });
                      } else {
                        borderedChoiceBoxController.selectedIndex.value = index;
                      }
                    },
                    index: index,
                  );
                }).toList(),
              ),
              PrimaryActionButton(
                  label: AppConstant.next,
                  onPressed: () {
                      Get.to(() => PreferredContainerCard());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
