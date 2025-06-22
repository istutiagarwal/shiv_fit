import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/app/theme/styles.dart';

class DailyWaterLogsCard extends StatelessWidget {
  final String icon;
  final String volume;
  final String timeStamp;

  DailyWaterLogsCard(
      {super.key,
      required this.icon,
      required this.volume,
      required this.timeStamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.dimens_10),
      margin: EdgeInsets.all(AppDimens.dimens_10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.iceyBlue,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  icon,
                  width: AppDimens.dimens_30,
                  height: AppDimens.dimens_20,
                ),
                SizedBox(width: AppDimens.dimens_10,),
                Column(
                  children: [
                    Text(
                      volume,
                      style: Styles.blackBold(
                        AppDimens.dimens_16,
                        AppColors.black,
                      ),
                    ),
                    Text(
                      timeStamp,
                      style: Styles.blackRegular(
                        AppDimens.dimens_14,
                        AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "daily goal",
                      style: Styles.blackRegular(
                        AppDimens.dimens_16,
                        AppColors.grey,
                      ),
                    ),
                    Text(
                      "93%",
                      style: Styles.blackRegular(
                        AppDimens.dimens_16,
                        AppColors.grey,
                      ),
                    ),
                  ],
                ),
                CircularProgressIndicator()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
