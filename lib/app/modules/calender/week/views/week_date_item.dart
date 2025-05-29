import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/calender/week/controllers/week_calender_controller.dart';

class WeekDateItem extends StatelessWidget {
  final WeekCalenderController controller = Get.put(WeekCalenderController());
  final DateTime date;
  final bool isSelected;
  WeekDateItem({super.key, required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final isSelected = controller.isSelectedDate(date);
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Visibility(
              visible: isSelected,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
              ),
            ),
            Text(
              controller.getWeekdayInitial(date),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 4),
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
