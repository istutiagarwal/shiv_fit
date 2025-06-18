import 'package:get/get.dart';

class BaseController<T> extends GetxController {
  T get repository {
    try {
      return Get.find<T>();
    } catch (e) {
      throw Exception(
          'Repository of type $T not found. Did you forget to bind it?');
    }
  }
}
