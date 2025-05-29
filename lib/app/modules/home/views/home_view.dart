import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/calender/week/views/week_calender_view.dart';
import 'package:shiv_fit/app/modules/home/controllers/home_controler.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomeView extends StatelessWidget {
  final CalendarController calenderController = CalendarController();
   HomeView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WeekCalenderView(),
    );
  }
}
