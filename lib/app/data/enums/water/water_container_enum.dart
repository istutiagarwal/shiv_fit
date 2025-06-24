import 'package:shiv_fit/app/data/values/app_constant.dart';
import 'package:shiv_fit/app/data/values/images.dart';

enum WaterContainerType {
  glass,
  hydroFlask,
  shaker,
  tumbler,
  waterBottle,
  custom,
}

extension WaterContainerDetails on WaterContainerType {
  String get label {
    switch (this) {
      case WaterContainerType.glass:
        return AppConstant.water.glass;
      case WaterContainerType.hydroFlask:
        return AppConstant.water.hydroFlask;
      case WaterContainerType.shaker:
        return AppConstant.water.shaker;
      case WaterContainerType.tumbler:
        return AppConstant.water.tumbler;
      case WaterContainerType.waterBottle:
        return AppConstant.water.waterBottle;
      case WaterContainerType.custom:
        return AppConstant.water.custom;
    }
  }

  String get description {
    switch (this){
      case WaterContainerType.glass:
        return AppConstant.water.glassVolume;
      case WaterContainerType.hydroFlask:
        return AppConstant.water.hydroFlaskVolume;
      case WaterContainerType.shaker:
        return AppConstant.water.shakerVolume;
      case WaterContainerType.tumbler:
        return AppConstant.water.tumblerVolume;
      case WaterContainerType.waterBottle:
        return AppConstant.water.waterBottleVolume;
      case WaterContainerType.custom:
        return '';
    }
  } // You can customize per type if needed

  String get icon {
    switch (this) {
      case WaterContainerType.glass:
        return Images.icWaterGlass;
      case WaterContainerType.hydroFlask:
        return Images.icHydroFlask;
      case WaterContainerType.shaker:
        return Images.icShaker;
      case WaterContainerType.tumbler:
        return Images.icTumbler;
      case WaterContainerType.waterBottle:
        return Images.icWaterBottle;
      case WaterContainerType.custom:
        return Images.womenDrinkingWaterOnboarding;
    }
  }
}
