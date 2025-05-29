import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/calender/month/views/month_calender_view.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomeView extends StatelessWidget {
  final CalendarController calenderController = CalendarController();
   HomeView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MonthCalenderView(),
    );
  }
}
