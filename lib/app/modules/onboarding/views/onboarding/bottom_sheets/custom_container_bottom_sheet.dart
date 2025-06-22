import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class CustomContainerBottomSheet extends StatelessWidget {
  const CustomContainerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: AppDimens.dimens_20,
        right: AppDimens.dimens_20,
        top: AppDimens.dimens_20,
        bottom: MediaQuery.of(context).viewInsets.bottom + AppDimens.dimens_20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Add container",
                  style: Styles.blackBold(
                    AppDimens.dimens_20,
                    AppColors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.close,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          Text(
            "Custom Container",
            style: Styles.blackBold(AppDimens.dimens_18, AppColors.black),
          ),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          TextField(
              decoration: InputDecoration(
            hint: Text("Container Type"),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.iceyBlue,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          )),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          TextField(
              decoration: InputDecoration(
            hint: Text("Volume"),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.iceyBlue,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          )),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
          PrimaryActionButton(label: "Save", onPressed: () {}),
          SizedBox(
            height: AppDimens.dimens_20,
          ),
        ],
      ),
    );
  }
}
