import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/calender/week/views/DateTitleView.dart';

class CalendarHeaderPanel extends StatelessWidget {
  const CalendarHeaderPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(Icons.person),
        DateTitleView(),
        const Icon(Icons.calendar_month),
      ],
    );
  }
}
