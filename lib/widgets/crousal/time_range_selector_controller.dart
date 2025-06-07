import 'package:get/get.dart';
import 'package:shiv_fit/app/data/enums/time_range_enum.dart';

class TimeRangeSelectorController extends GetxController{
  final Rx<TimeRangeEnum> selectedRange = TimeRangeEnum.day.obs;

  void onRangeSelection(TimeRangeEnum range){
    selectedRange.value = range;
  }
}