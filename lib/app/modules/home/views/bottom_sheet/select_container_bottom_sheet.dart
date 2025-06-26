import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/number.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/bordered_choice_box.dart';

class SelectContainerBottomSheet extends StatelessWidget {
  final BorderedChoiceBoxController borderedChoiceBoxController =
  Get.find<BorderedChoiceBoxController>();
   SelectContainerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
     return  Text("inside bottom sheet");
     //Scaffold(
    //   body: SafeArea(
    //     child: Container(
    //       padding: EdgeInsets.symmetric(
    //         horizontal: AppDimens.dimens_20,
    //         vertical: AppDimens.dimens_20,
    //       ),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text(
    //             AppConstant.water.dailyWaterQuestion,
    //             textAlign: TextAlign.center,
    //             style: Styles.blackBold(AppDimens.dimens_24, AppColors.black),
    //           ),
    //           GridView.count(
    //             crossAxisCount: Numbers.three,
    //             shrinkWrap: true,
    //             physics: const NeverScrollableScrollPhysics(),
    //             padding: const EdgeInsets.all(Numbers.eight),
    //             crossAxisSpacing: Numbers.twelve.toDouble(),
    //             mainAxisSpacing: Numbers.twelve.toDouble(),
    //             children: List.generate(controller.tileActions.length, (index) {
    //               final tile = controller.tileActions[index];
    //               return BorderedChoiceBox(
    //                 label: tile.label,
    //                 onPressed: () {
    //                   if (index ==
    //                       controller.tileActions.length - Numbers.one) {
    //                     borderedChoiceBoxController.selectedIndex.value = index;
    //                     WidgetsBinding.instance.addPostFrameCallback((_) {
    //                       showModalBottomSheet(
    //                         context: context,
    //                         builder: (context) =>
    //                             CustomWaterIntakeGoalBottomSheet(),
    //                         isScrollControlled: true,
    //                       );
    //                     });
    //                   } else {
    //                     borderedChoiceBoxController.selectedIndex.value = index;
    //                     controller.handleWaterGoalClick(tile.label);
    //                   }
    //                 },
    //                 index: index,
    //               );
    //             }).toList(),
    //           ),
    //           PrimaryActionButton(
    //               label: AppConstant.next,
    //               onPressed: () {
    //                 Get.to(() => PreferredContainerCard());
    //               })
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
