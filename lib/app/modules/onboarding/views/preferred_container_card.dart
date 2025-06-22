import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/modules/home/views/home_view.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/app/modules/onboarding/views/onboarding/bottom_sheets/custom_container_bottom_sheet.dart';
import 'package:shiv_fit/app/routes/app_routes.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/bordered_choice_box.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class PreferredContainerCard extends GetView<OnboardingController> {
  const PreferredContainerCard({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppConstant.water.waterIntake,
                style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
              ),
              Text(
                AppConstant.water.waterIntakeLabel,
                textAlign: TextAlign.center,
                style: Styles.blackBold(AppDimens.dimens_24, AppColors.black),
              ),
              Text(
                AppConstant.selectAllThatApply,
                textAlign: TextAlign.center,
                style:
                    Styles.blackRegular(AppDimens.dimens_14, AppColors.black),
              ),
              Image.asset(
                Images.womenDrinkingWaterOnboarding,
                width: AppDimens.dimens_150,
                height: AppDimens.dimens_250,
              ),
              Obx(() {
                return GridView.count(
                  crossAxisCount: 3,
                  // 3 items per row
                  shrinkWrap: true,
                  // Only take up needed space
                  physics: const NeverScrollableScrollPhysics(),
                  // Avoid internal scrolling
                  padding: const EdgeInsets.all(8),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children:
                      List.generate(controller.waterLogActions.length, (index) {
                    final tile = controller.waterLogActions[index];
                    return BorderedChoiceBox(
                      label: tile.label,
                      onPressed: () {
                        if (index == 5) {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) =>
                                  CustomContainerBottomSheet(),
                              isScrollControlled: true,
                            );
                          });
                        }
                      },
                      description: tile.description,
                      icon: tile.icon!,
                      isSelected:
                          controller.selectedContainerLabel.value == tile.label,
                    );
                  }).toList(),
                );
              }),
              PrimaryActionButton(
                label: AppConstant.next,
                onPressed: () {
                  Get.toNamed(Routes.home);
                },
                isDisabled: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
