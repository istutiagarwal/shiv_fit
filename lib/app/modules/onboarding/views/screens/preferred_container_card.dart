import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/images.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/app/modules/onboarding/views/bottom_sheets/custom_container_bottom_sheet.dart';
import 'package:shiv_fit/app/routes/app_routes.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/bordered_choice_box.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class PreferredContainerCard extends GetView<OnboardingController> {


  PreferredContainerCard({super.key});

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
              GridView.count(
                crossAxisCount: Numbers.three,
                // 3 items per row
                shrinkWrap: true,
                // Only take up needed space
                physics: const NeverScrollableScrollPhysics(),
                // Avoid internal scrolling
                padding: const EdgeInsets.all(Numbers.eight),
                crossAxisSpacing: Numbers.twelve.toDouble(),
                mainAxisSpacing: Numbers.twelve.toDouble(),
                children:
                    List.generate(controller.waterLogActions.length, (index) {
                  final tile = controller.waterLogActions[index];
                  return Obx((){

                    return OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.transparent,
                        foregroundColor: AppColors.transparent,
                        disabledBackgroundColor: AppColors.grey,
                        disabledForegroundColor: AppColors.transparent,
                        padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppDimens.dimens_10),
                        ),
                        side:  BorderSide(
                          color:  controller.isTileSelected(index)  ?AppColors.iceyBlue : AppColors.grey,
                          width: AppDimens.dimens_1,
                        ),
                      ),
                      onPressed: () {
                        if (index ==
                            controller.waterLogActions.length - Numbers.one) {
                          controller.toggleSelection(index);
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => CustomContainerBottomSheet(),
                              isScrollControlled: true,
                            );
                          });
                        } else {
                          controller.toggleSelection(index);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (tile.icon != null) ...[
                            Image.asset(
                              tile.icon!,
                              width: AppDimens.dimens_50,
                              height: AppDimens.dimens_40,
                            ),
                            SizedBox(width: AppDimens.dimens_8),
                          ],
                          Text(
                            tile.label,
                            style: Styles.blackBold(
                                AppDimens.dimens_12, AppColors.black),
                          ),
                          if (tile.description != null) ...[
                            Text(
                              tile.description!,
                              style: Styles.blackBold(
                                  AppDimens.dimens_8, AppColors.black),
                            ),
                          ],
                        ],
                      ),
                    );
                  });
                }).toList(),
              ),
              PrimaryActionButton(
                label: AppConstant.next,
                onPressed: () {
                 controller.handleWaterContainerSelection();
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
