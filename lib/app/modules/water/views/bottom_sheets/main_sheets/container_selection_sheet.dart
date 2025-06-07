import 'package:flutter/material.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/modules/water/views/bottom_sheets/parts/container_grid_view.dart';
import 'package:shiv_fit/app/modules/water/views/bottom_sheets/parts/container_question_row.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class ContainerSelectionSheet extends StatelessWidget {
  const ContainerSelectionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding:  EdgeInsets.all( AppDimens.dimens_20),
        width: constraints.maxWidth,
        height: constraints.maxHeight * Numbers.containerSheetHeightFraction,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ContainerQuestionRow(),
            SizedBox(height: AppDimens.dimens_20,),
            const Expanded(
              child: ContainerGridView(),
            )
          ],
        ),
      );
    });
  }
}

PersistentBottomSheetController showContainerBottomSheet(
    BuildContext scaffoldContext) {
  return showBottomSheet(
      context: scaffoldContext,
      builder: (scaffoldContext) => ContainerSelectionSheet());
}
