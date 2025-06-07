import 'package:flutter/material.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/water/views/bottom_sheets/parts/container_item_tile.dart';

class ContainerGridView extends StatelessWidget {
  const ContainerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Numbers.five,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Numbers.three,
        crossAxisSpacing: Numbers.eight,
        mainAxisSpacing: Numbers.eight,
        childAspectRatio: Numbers.four / Numbers.four,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ContainerItemTile(
          index: index,
        );
      },
    );
  }
}
