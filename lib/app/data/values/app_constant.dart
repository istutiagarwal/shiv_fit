class AppConstant {
  static const water = _WaterConstants();
  static const next = "Next";
  static const selectAllThatApply = "Select all that apply";
  static const String devUserId = 'test_user_123';
}

class _WaterConstants {
  const _WaterConstants();

  final String waterContainerQuestion =
      "Which container did you use to sip water?";
  final String adjustContainerVolume = "Easily adjust the container volume";
  final String mlUnit = "ml: ";
  final String changeWaterContainer = "Want to switch your water container?";
  final String updateContainerVolume = "Update container volume";
  final String editableInSettings =
      "This value is editable anytime via Settings";
  final String done = "Done";
  final String addWater = "Add Water";
  final String day = "Day";
  final String month = "Month";
  final String week = "Week";
  final String hydration = "Hydration";
  final String today = "Today";
  final String timeToRefill = "Thirsty? Time to refill.";
  final String waterIntake = "Water Intake";
  final String waterIntakeGoal = "Water Intake Goal";
  final String dailyWaterQuestion = "How much water do you want to drink each day?";
  final String hydrationGoalDescription = "Setting a daily water intake goal is the first step towards a healthier you. "
      "Choose a goal that challenges you but is also achievable. "
      "Remember, every drop counts.";
  final String waterIntakeLabel = "What size of container do you use most often.";
}
