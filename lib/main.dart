import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shiv_fit/app/app.dart';
import 'package:shiv_fit/app/app_binding.dart';
import 'package:shiv_fit/service/hive_service.dart';

void main() async {
  await initGetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await HiveService.init();
  AppBinding().dependencies();
  runApp(const App());
}

Future initGetStorage() async {
  await GetStorage.init();
}
