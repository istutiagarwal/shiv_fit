import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/calender/month/controllers/month_calender_controller.dart';
import 'package:shiv_fit/app/modules/calender/month/views/calendar_cell.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class CalendarGrid extends StatelessWidget {
  final MonthCalenderController controller = Get.put(MonthCalenderController());
  CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: Numbers.fourty_nine,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Numbers.seven,
          mainAxisSpacing: AppDimens.dimens_4,
          crossAxisSpacing: AppDimens.dimens_4,
          childAspectRatio: AppDimens.dimens_1,
        ),
        itemBuilder: (
            context,
            index,
            ) {
          if(index <Numbers.seven){
            return Center(
              child: Text(controller.daysInWeek[index]),
            );
          }
          return CalendarCell(calendarIndex: index - Numbers.seven);
        });
  }
}
