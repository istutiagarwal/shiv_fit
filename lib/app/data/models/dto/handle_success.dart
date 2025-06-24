import 'package:get/get.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';

class HandleSuccess {
  HandleSuccess._privateConstructor();

  static void showSuccess(String message) {
    Get.rawSnackbar(
      message: message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.oliveGreen, // or any success color you define
    );
  }
}
