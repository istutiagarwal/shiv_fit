import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/week/views/selected_day_indicator.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WeekDateItem extends GetView<WeekCalenderController> {
  final DateTime date;
  final bool isSelected;

  const WeekDateItem({super.key, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final isSelected = controller.isSelectedDate(date);
    return Column(
      children: [
        SelectedDayIndicator(date: date, isSelected: isSelected),
        SizedBox(height: AppDimens.dimens_4),
        TextButton(
          onPressed: () {
            controller.onTap(date);
          },
          child: Text('${date.day}'),
        ),
      ],
    );
  }
}
