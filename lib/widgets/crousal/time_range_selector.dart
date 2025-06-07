import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/data/enums/time_range_enum.dart';
import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/widgets/crousal/time_range_selector_controller.dart';

class TimeRangeSelector extends StatelessWidget {
  final TimeRangeSelectorController controller =
      Get.put(TimeRangeSelectorController());

  TimeRangeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTimeRangeButton(
            AppConstant.water.day,
            TimeRangeEnum.day,
          ),
          _buildTimeRangeButton(
            AppConstant.water.week,
            TimeRangeEnum.week,
          ),
          _buildTimeRangeButton(
            AppConstant.water.month,
            TimeRangeEnum.month,
          ),
        ],
      );
    });
  }

  Widget _buildTimeRangeButton(String label, TimeRangeEnum range) {
    final isSelected = controller.selectedRange.value == range;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: isSelected
                      ? AppColors.iceyBlue
                      : AppColors.transparent))),
      child: TextButton(
        onPressed: () {
          controller.onRangeSelection(range);
        },
        child: Text(label),
      ),
    );
  }
}
