import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/service/water_sheet_tap_helper.dart';

class ContainerItemTile extends StatelessWidget {
  final int index;
  final WaterController controller = Get.put(WaterController());

  ContainerItemTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            WaterSheetTapHelper.onContainerSelection(index, context);
          },
          child: Image.asset(
            controller.getImage(index),
            height: AppDimens.dimens_70,
          ),
        ),
        Text(
          controller.getContainerType(index),
          style: Styles.blackBold(AppDimens.dimens_12, AppColors.black,),
        ),
        Text(
          controller.getContainerVolume(index),
          style: Styles.blackRegular(AppDimens.dimens_12, AppColors.black,),
        ),
      ],
    );
  }
}
