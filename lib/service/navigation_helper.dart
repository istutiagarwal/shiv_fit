import 'package:flutter/material.dart';
import 'package:shiv_fit/app/modules/water/views/container_selection_sheet.dart';
import 'package:shiv_fit/app/modules/water/views/container_volume_selection_sheet.dart';

class NavigationHelper{

  static void openContainerSelectionSheet(BuildContext context){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet(context: context,
        builder: (context) =>
            ContainerSelectionSheet(),);
    });
  }
  static void openVolumeContainerSheet(BuildContext context){
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet(context: context,
        builder: (context) =>
            ContainerVolumeSelectionSheet(),);
    });
  }

  static void closeBottomSheet(BuildContext context) {
    Navigator.pop(context);
  }
}