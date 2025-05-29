import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class SelectedDayIndicator extends StatelessWidget {
  final WeekCalenderController controller = Get.put(WeekCalenderController());
  final DateTime date;
  final bool isSelected;

  SelectedDayIndicator(
      {super.key, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: isSelected,
          child: Container(
            width: AppDimens.dimens_32,
            height: AppDimens.dimens_32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.yellow,
            ),
          ),
        ),
        Text(
          controller.getWeekdayInitial(date),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
