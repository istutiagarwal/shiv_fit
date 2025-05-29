import 'package:get/get_instance/src/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BaseController<T> extends GetxController {
  T get repository => GetInstance().find<T>();
}