import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/models/request/water_log_request_dto.dart';
import 'package:shiv_fit/app/modules/water/controller/water_day_details_controller.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_consumption_chart_card.dart';
import 'package:shiv_fit/app/modules/water/views/cards/water_day_header.dart';

class WaterDayView extends GetView<WaterDayDetailsController> {
  const WaterDayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          WaterDayHeader(),
          WaterConsumptionChartCard(),
          ElevatedButton(
              onPressed: () {
                controller.onAddWater(
                    WaterLogRequestDto(volume: 250, containerType: "glass"));
              },
              child: const Text("Add water")),
        ],
      ),
    );
  }
}
