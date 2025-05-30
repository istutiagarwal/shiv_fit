import 'package:get/get.dart';
import 'package:shiv_fit/app/base/base_controller.dart';
import 'package:shiv_fit/app/data/values/number.dart';

class MonthCalenderController extends BaseController {
  DateTime now = DateTime.now();
  late Rx<DateTime> selectedDate;
  late Rx<int> currentMonth;
  late RxList<DateTime> calendarDates = <DateTime>[].obs;
  List<String> daysInWeek = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  void onInit() {
    super.onInit();
    selectedDate = now.obs;
    currentMonth = now.month.obs;
    calendarDates = generateDatesOfMonth(getCalendarGridStartDate(now)).obs;
  }

  DateTime getFirstDayOfTheMonth(DateTime date) =>
      DateTime(date.year, date.month, Numbers.one);

  DateTime getLastDayOfMonth(DateTime date) {
    final beginningNextMonth = (date.month < Numbers.twelve)
        ? DateTime(date.year, date.month + Numbers.one, Numbers.one)
        : DateTime(date.year + Numbers.one, Numbers.one, Numbers.one);
    return beginningNextMonth.subtract(const Duration(days: Numbers.one));
  }

  int getFirstDayOfTheMonthWeekDay(DateTime firstDayOfTheMonth) =>
      firstDayOfTheMonth.weekday;

  DateTime getCalendarGridStartDate(DateTime date) {
    return getFirstDayOfTheMonth(date).subtract(
        Duration(days: getFirstDayOfTheMonthWeekDay(date) - Numbers.one));
  }

  List<DateTime> generateDatesOfMonth(DateTime monday) {
    return List.generate(
        Numbers.fourtyTwo, (index) => monday.add(Duration(days: index)));
  }

  List<DateTime> getPreviousMonth(DateTime date) {
    DateTime previousMonthFirstDay =
        DateTime(date.year, date.month - Numbers.one, Numbers.one);
    calendarDates.value =
        generateDatesOfMonth(getCalendarGridStartDate(previousMonthFirstDay));
    selectedDate.value = previousMonthFirstDay;
    currentMonth.value = date.month - Numbers.one;
    return calendarDates;
  }

  List<DateTime> getNextMonth(DateTime date) {
    DateTime nextMonthFirstDay =
        DateTime(date.year, date.month + Numbers.one, Numbers.one);
    calendarDates.value =
        generateDatesOfMonth(getCalendarGridStartDate(nextMonthFirstDay));
    selectedDate.value = nextMonthFirstDay;
    currentMonth.value = date.month + Numbers.one;
    return calendarDates;
  }

  onTap(DateTime date) {
    selectedDate.value = date;
  }

  bool isSelectedDate(DateTime date) {
    return date.year == selectedDate.value.year &&
        date.month == selectedDate.value.month &&
        date.day == selectedDate.value.day;
  }

  bool isSameMonthDates(DateTime referenceMonth, DateTime dateToCheck) {
    return referenceMonth.month == dateToCheck.month &&
        referenceMonth.year == dateToCheck.year;
  }
}
