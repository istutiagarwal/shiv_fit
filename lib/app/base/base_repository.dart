import 'package:get/get.dart';
import 'package:shiv_fit/service/firebase_service.dart';

class BaseRepository {
  FirebaseService get firebaseService => Get.find<FirebaseService>();
}
