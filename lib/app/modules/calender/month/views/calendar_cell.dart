import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class CalendarCell extends StatelessWidget {
  final int calendarIndex;
  final MonthCalenderController controller = Get.find<MonthCalenderController>();  CalendarCell({super.key, required this.calendarIndex});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelectedDate =
      controller.isSelectedDate(controller.calendarDates[calendarIndex]);
      return GestureDetector(
        onTap: () =>
            controller.onTap(controller.calendarDates[calendarIndex]),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Visibility(
                  visible: isSelectedDate,
                  child: Container(
                    width: AppDimens.dimens_32,
                    height: AppDimens.dimens_32,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.yellow,
                    ),
                  ),
                ),
                Text(
                  controller.calendarDates[calendarIndex].day.toString(),
                  style: TextStyle(
                    color: controller.isSameMonthDates(
                      controller.selectedDate.value,
                      controller.calendarDates[calendarIndex],
                    )
                        ? AppColors.black
                        : AppColors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
