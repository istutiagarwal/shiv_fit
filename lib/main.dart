import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shiv_fit/app/app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await initGetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

Future initGetStorage() async {
  await GetStorage.init();
}

