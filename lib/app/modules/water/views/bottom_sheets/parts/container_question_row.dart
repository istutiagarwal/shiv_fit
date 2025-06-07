import 'package:flutter/material.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class ContainerQuestionRow extends StatelessWidget {
  const ContainerQuestionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            AppConstant.water.waterContainerQuestion,
            style: Styles.blackBold(AppDimens.dimens_18,AppColors.black),
            textAlign: TextAlign.center,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(
            Icons.close,
            color: AppColors.red,
          ),
        ),
      ],
    );
  }
}
