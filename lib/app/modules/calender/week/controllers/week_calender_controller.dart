import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/values/number.dart';

class WeekCalenderController extends BaseController {
  DateTime now = DateTime.now();
  late Rx<DateTime> selectedDate;

  DateTime getTodayDate() => DateTime(now.year, now.month, now.day);

  @override
  void onInit() {
    super.onInit();
    selectedDate = Rx<DateTime>(getTodayDate());
  }

  DateTime getCurrentWeekMonday(DateTime date) =>
      date.subtract(Duration(days: date.weekday - Numbers.one));

  List<DateTime> generateWeekDates(DateTime monday) {
    return List.generate(Numbers.seven, (index) => monday.add(Duration(days: index)));
  }

  DateTime getNextWeekMonday(DateTime currentMonday) =>
      currentMonday.add(const Duration(days: Numbers.seven));

  DateTime getPreviousWeekMonday(DateTime currentMonday) =>
      currentMonday.subtract(const Duration(days: Numbers.seven));

  String getWeekdayInitial(DateTime date) {
    const initials = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    return initials[date.weekday - Numbers.one];
  }

  void onLeftGesture(DateTime date) {
    DateTime currentMonday = getCurrentWeekMonday(date);
    DateTime previousMonday = getPreviousWeekMonday(currentMonday);
    selectedDate.value = previousMonday;
    generateWeekDates(previousMonday);
  }

  void onRightGesture(DateTime date) {
    DateTime currentMonday = getCurrentWeekMonday(date);
    DateTime nextMonday = getNextWeekMonday(currentMonday);
    selectedDate.value = nextMonday;
    generateWeekDates(nextMonday);
  }

  void onTap(DateTime date) => selectedDate.value = date;

  bool isSelectedDate(DateTime date) {
    return date.year == selectedDate.value.year &&
        date.month == selectedDate.value.month &&
        date.day == selectedDate.value.day;
  }

  void jumpToToday() => selectedDate.value = getTodayDate();
}
