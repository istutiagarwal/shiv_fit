import 'package:get/get.dart';
import 'package:shiv_fit/app/data/values/error_messages.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/utils/helper/api_exception.dart';

class HandleError {
  HandleError._privateConstructor();

  static handleError(APIException? error) {
    Get.rawSnackbar(
      message: error?.message ?? ErrorMessages.networkGeneral,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.iceyBlue,
    );
  }
}
