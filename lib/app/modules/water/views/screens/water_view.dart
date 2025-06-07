import 'package:flutter/material.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/modules/water/views/bottom_sheets/main_sheets/container_selection_sheet.dart';

class WaterView extends StatelessWidget {
  const WaterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(
        builder: (context) {
          return ElevatedButton(
              onPressed: () {
                showContainerBottomSheet(context);
              },
              child:  Text(AppConstant.water.addWater));
        }
      ),
    );
  }
}
