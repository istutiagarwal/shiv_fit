import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class BorderedChoiceBox extends GetView<BorderedChoiceBoxController> {
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final String? icon;
  final String label;
  final String? description;
  final VoidCallback? onPressed;
  final bool isDisabled;
  final int index;

   BorderedChoiceBox( {
    super.key,
    // required this.controller,
    this.foregroundColor ,
    this.backgroundColor ,
    this.disabledForegroundColor = Colors.grey,
    this.disabledBackgroundColor = Colors.blueGrey,
    this.icon,
    required this.label,
    required this.onPressed,
    this.isDisabled = false,
    this.description,
     required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final Color resolvedForeground = foregroundColor ?? AppColors.transparent;
    final Color resolvedBackground = backgroundColor ?? AppColors.transparent;
    final Color disabledResolvedForeground = disabledForegroundColor ?? AppColors.transparent;
    final Color disabledResolvedBackground = disabledBackgroundColor ?? AppColors.cWhite;
    return Obx((){
      return OutlinedButton(
        onPressed: isDisabled ? null : onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: resolvedBackground,
          foregroundColor: resolvedForeground,
          disabledBackgroundColor: disabledResolvedBackground,
          disabledForegroundColor: disabledResolvedForeground,
          padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.dimens_10),
          ),
          side:  BorderSide(
            color:  controller.isTileSelected(index)  ?AppColors.iceyBlue : AppColors.grey,
            width: AppDimens.dimens_1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Image.asset(icon!,width: AppDimens.dimens_50,height: AppDimens.dimens_40,),
              SizedBox(width: AppDimens.dimens_8),
            ],
            Text(label,style: Styles.blackBold(AppDimens.dimens_12, AppColors.black),),
            if(description != null) ...[
              Text(description!,style: Styles.blackBold(AppDimens.dimens_8, AppColors.black),),
            ],
          ],
        ),
      );
    });
  }
}

class BorderedChoiceBoxController extends BaseController{
  BorderedChoiceBoxController();
  final Rx<int>selectedIndex = 0.obs;

  bool isTileSelected(int index) {
      return selectedIndex.value == index;
  }
}
