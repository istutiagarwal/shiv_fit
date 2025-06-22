import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class BorderedChoiceBox extends StatelessWidget {
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final String? icon;
  final String label;
  final String? description;
  final VoidCallback? onPressed;
  final bool isDisabled;
  final bool isSelected;

   BorderedChoiceBox({
    super.key,
    this.foregroundColor ,
    this.backgroundColor ,
    this.disabledForegroundColor = Colors.grey,
    this.disabledBackgroundColor = Colors.blueGrey,
    this.icon,
    required this.label,
    required this.onPressed,
    this.isDisabled = false,
    this.description,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color resolvedForeground = foregroundColor ?? AppColors.transparent;
    final Color resolvedBackground = backgroundColor ?? AppColors.transparent;
    final Color disabledResolvedForeground = disabledForegroundColor ?? AppColors.transparent;
    final Color disabledResolvedBackground = disabledBackgroundColor ?? AppColors.cWhite;
    print("inside bordered ${isSelected}");
    return OutlinedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: resolvedBackground,
        foregroundColor: resolvedForeground,
        disabledBackgroundColor: disabledResolvedBackground,
        disabledForegroundColor: disabledResolvedForeground,
        padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.dimens_10),
          side:  BorderSide(
            color: isSelected ?AppColors.yellow : AppColors.grey,
            width: AppDimens.dimens_1,
          ),
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
  }
}
