import 'package:shiv_fit/app/data/enums/time_range_enum.dart';

class DateNavigationHelper{
  static DateTime next(DateTime current, TimeRangeEnum range) {
    switch (range) {
      case TimeRangeEnum.day:
        return current.add(const Duration(days: 1));
      case TimeRangeEnum.week:
        return current.add(const Duration(days: 7));
      case TimeRangeEnum.month:
        return DateTime(current.year, current.month + 1, 1);
    }
  }

  static DateTime previous(DateTime current, TimeRangeEnum range) {
    switch (range) {
      case TimeRangeEnum.day:
        return current.subtract(const Duration(days: 1));
      case TimeRangeEnum.week:
        return current.subtract(const Duration(days: 7));
      case TimeRangeEnum.month:
        return DateTime(current.year, current.month - 1, 1);
    }
  }
}