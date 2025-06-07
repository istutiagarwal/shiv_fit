import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/service/water_sheet_tap_helper.dart';

class ContainerVolumeSelectionSheet extends StatelessWidget {
  final WaterController controller = Get.put(WaterController());
  final TextEditingController mlInputController = TextEditingController();

  ContainerVolumeSelectionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight * Numbers.containerSheetHeightFraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  AppConstant.water.adjustContainerVolume,
                  style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
                ),
              ),
              Expanded(
                child: Image.asset(
                  controller.getSelectedImage(),
                  height: AppDimens.dimens_70,
                ),
              ),
              Expanded(
                  child: Text(
                controller.getSelectedContainerType(),
                style: Styles.blackBold(AppDimens.dimens_12, AppColors.black),
              )),
              Obx(() => Visibility(
                    visible: controller.isTextFieldVisible.value,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppConstant.water.mlUnit,
                          style: Styles.blackRegular(
                            AppDimens.dimens_12,
                            AppColors.black,
                          ),
                        ),
                        SizedBox(
                          width: Numbers.eighty,
                          child: TextField(
                            controller: mlInputController,
                            keyboardType: TextInputType.number,
                            autofocus: true,
                            onSubmitted: (value) {
                              WaterSheetTapHelper.onVolumeTextFieldSubmitted(
                                  value);
                            },
                            decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: Numbers.eight,
                                  vertical: Numbers.four),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Obx(() => Visibility(
                    visible: !controller.isTextFieldVisible.value,
                    child: Text(controller.getSelectedContainerVolume()),
                  )),
              Expanded(
                child: Visibility(
                  visible: !controller.isEditButtonClicked.value,
                  child: ElevatedButton(
                    onPressed: () {
                      WaterSheetTapHelper.onChangeContainerClick(context);
                    },
                    child: Text(
                      AppConstant.water.changeWaterContainer,
                      style: Styles.blackBold(
                        AppDimens.dimens_12,
                        AppColors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => Visibility(
                    visible: !controller.isEditButtonClicked.value,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.onEditButtonClick();
                      },
                      child: Text(
                        AppConstant.water.updateContainerVolume,
                        style: Styles.blackBold(
                          AppDimens.dimens_12,
                          AppColors.black,
                        ),
                      ),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    WaterSheetTapHelper.handleDoneClick(context);
                  },
                  child: Text(
                    AppConstant.water.done,
                    style: Styles.blackBold(
                      AppDimens.dimens_12,
                      AppColors.black,
                    ),
                  )),
              Expanded(
                child: Text(
                  AppConstant.water.editableInSettings,
                  style: Styles.blackBold(
                    AppDimens.dimens_12,
                    AppColors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
