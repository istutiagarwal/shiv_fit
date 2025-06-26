import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';
import 'package:shiv_fit/widgets/text_field/custom_text_field.dart';

class CustomContainerBottomSheet extends GetView<OnboardingController> {
  final TextEditingController containerController = TextEditingController();
  final TextEditingController volumeController = TextEditingController();

  CustomContainerBottomSheet({super.key});

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
                  AppConstant.water.addContainer,
                  style: Styles.blackBold(
                    AppDimens.dimens_20,
                    AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.close,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          Text(
            AppConstant.water.customContainer,
            style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          CustomTextField(
              textEditingController: containerController,
              label: AppConstant.water.container,
              suffixText: ''),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          CustomTextField(
              textEditingController: volumeController,
              label: AppConstant.water.volume,
              suffixText: AppConstant.water.litres),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          PrimaryActionButton(
              label: AppConstant.water.save,
              onPressed: () {
                controller.customContainer = ContainerUsageRequestModel(
                  containerName: containerController.text,
                  volume: volumeController.text,
                );
                controller.handleWaterContainerSelection();
              }),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
        ],
      ),
    );
  }
}
