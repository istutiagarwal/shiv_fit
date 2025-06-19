import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/home/controllers/home_controler.dart';
import 'package:shiv_fit/app/modules/home/views/cards/water_card.dart';
class HomeView extends GetView<HomeController> {
   const HomeView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WaterCard()),
    );
  }
}
