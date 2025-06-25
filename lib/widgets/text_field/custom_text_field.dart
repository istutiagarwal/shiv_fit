import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final String suffixText ;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.label,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hint: Text(label),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: AppDimens.dimens_1,
          ),
          borderRadius: BorderRadius.circular(AppDimens.dimens_8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.dimens_12),
          borderSide: BorderSide(
            color: Colors.grey,
            width: AppDimens.dimens_1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.iceyBlue,
            width: AppDimens.dimens_1,
          ),
          borderRadius: BorderRadius.circular(AppDimens.dimens_8),
        ),
        suffixText: suffixText,
      ),
    );
  }
}
