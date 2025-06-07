import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/water/views/water_view.dart';
class HomeView extends StatelessWidget {
   HomeView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WaterView(),
    );
  }
}
