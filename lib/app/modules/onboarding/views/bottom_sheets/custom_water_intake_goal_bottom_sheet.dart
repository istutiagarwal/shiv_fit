import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/app/modules/onboarding/views/screens/preferred_container_card.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/service/navigation_helper.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';
import 'package:shiv_fit/widgets/text_field/custom_text_field.dart';

class CustomWaterIntakeGoalBottomSheet extends GetView<OnboardingController> {
  final TextEditingController textEditingController = TextEditingController();

  CustomWaterIntakeGoalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimens.dimens_20,
        right: AppDimens.dimens_20,
        top: AppDimens.dimens_20,
        bottom: MediaQuery.of(context).viewInsets.bottom + AppDimens.dimens_20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppConstant.water.setDailyWaterGoal,
                  style: Styles.blackBold(
                    AppDimens.dimens_20,
                    AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  color: AppColors.red,
                  onPressed: () {
                    NavigationHelper.closeBottomSheet(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          Text(
            AppConstant.water.waterGoalBSTitle,
            style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
          ),
          Text(
            AppConstant.water.waterGoalBSDescription,
            style: Styles.blackBold(AppDimens.dimens_16, AppColors.black),
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          CustomTextField(
              textEditingController: textEditingController,
              label: AppConstant.water.setDailyWaterGoal,
              suffixText: AppConstant.water.litres),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          PrimaryActionButton(
              label: AppConstant.water.save,
              onPressed: () {
                controller.handleWaterGoalClick(textEditingController.text);
                NavigationHelper.closeBottomSheet(context);
                Get.to(() => PreferredContainerCard());
              }),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
        ],
      ),
    );
  }
}
