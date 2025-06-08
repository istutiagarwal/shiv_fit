import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_consumption_chart_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_day_header.dart';

class WaterDayView extends StatelessWidget {
  const WaterDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            WaterDayHeader(),
          WaterConsumptionChartCard(),
        ],
      ),
    );
  }
}
