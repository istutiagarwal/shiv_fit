
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shiv_fit/app/routes/app_pages.dart';
import 'package:shiv_fit/app/routes/app_routes.dart';

import 'app_binding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      initialRoute: Routes.water,
      getPages: AppPages.pages,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
    );
  }
}
