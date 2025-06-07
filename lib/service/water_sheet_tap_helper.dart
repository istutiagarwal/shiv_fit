import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/modules/water/controller/water_controller.dart';
import 'package:shiv_fit/service/navigation_helper.dart';

class WaterSheetTapHelper{
  static final _controller = Get.find<WaterController>();
  static void onContainerSelection(int index,BuildContext context){
    _controller.handleContainerSelection(index);
    NavigationHelper.closeBottomSheet(context);
    if (!_controller.isSelectedContainerUpdated()) {
      NavigationHelper.openVolumeContainerSheet(context);
    }

  }
  static void onVolumeTextFieldSubmitted(String value){
    _controller.updateIsUpdatedValue(_controller.getSelectedContainerKey());
    _controller.updateContainerVolume(
        _controller.getSelectedContainerKey(), value);
  }

  static void onChangeContainerClick(BuildContext context){
    _controller.onChangeContainerClick();
    NavigationHelper.closeBottomSheet(context);
    _controller.loadContainerDataFromStorage();
    NavigationHelper.openContainerSelectionSheet(context);
  }
  static void handleDoneClick(BuildContext context){
    _controller.onDoneClick();
    NavigationHelper.closeBottomSheet(context);
    _controller.loadContainerDataFromStorage();
    NavigationHelper.openContainerSelectionSheet(context);
  }
}