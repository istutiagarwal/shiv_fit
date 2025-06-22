import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class PrimaryActionButton extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final Color disabledForegroundColor;
  final Color disabledBackgroundColor;
  final IconData? icon;
  final String label;
  final VoidCallback? onPressed;
  final bool isDisabled;

  const PrimaryActionButton({
    super.key,
    this.foregroundColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.disabledForegroundColor = Colors.grey,
    this.disabledBackgroundColor = Colors.blueGrey,
     this.icon,
    required this.label,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        padding: EdgeInsets.symmetric(vertical: AppDimens.dimens_14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.dimens_32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon),
            SizedBox(width: AppDimens.dimens_8),
          ],
          Text(label),
        ],
      ),
    );
  }
}
