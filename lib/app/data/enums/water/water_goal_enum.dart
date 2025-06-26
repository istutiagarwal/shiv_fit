import 'package:shiv_fit/app/data/values/app_constant.dart';

enum WaterGoalEnum {
  one,
  onePointFive,
  two,
  twoPointFive,
  three,
  custom,
}

extension WaterGoalTypeExtension on WaterGoalEnum {
  String get label {
    switch (this) {
      case WaterGoalEnum.one:
        return AppConstant.water.oneLitre;
      case WaterGoalEnum.onePointFive:
        return AppConstant.water.onePointFiveLitre;
      case WaterGoalEnum.two:
        return AppConstant.water.twoLitre;
      case WaterGoalEnum.twoPointFive:
        return AppConstant.water.twoPointFiveLitre;
      case WaterGoalEnum.three:
        return AppConstant.water.threeLitre;
      case WaterGoalEnum.custom:
        return AppConstant.water.custom;
    }
    ;
  }
}
