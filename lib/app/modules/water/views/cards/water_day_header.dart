import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class WaterDayHeader extends GetView<WaterDayDetailsController> {
  const WaterDayHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              controller.onLeftOperandClick();
            },
            icon: const Icon(Icons.chevron_left)),
        Obx(() {
          return Row(
            children: [
              Text(
                controller.date.value.day.toString(),
                style: Styles.blackBold(
                  AppDimens.dimens_16,
                  AppColors.black,
                ),
              ),
              SizedBox(
                width: AppDimens.dimens_4,
              ),
              Text(
                DateFormat.MMMM().format(controller.date.value).toString(),
                style: Styles.blackBold(
                  AppDimens.dimens_16,
                  AppColors.black,
                ),
              ),
            ],
          );
        }),
        IconButton(
            onPressed: () {
              controller.onRightOperandClick();
            },
            icon: const Icon(Icons.chevron_right)),
      ],
    );
  }
}
