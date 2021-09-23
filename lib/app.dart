import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/screens/login_screen.dart';
import 'package:get/get.dart';

import './bindings/app_binding.dart';
import './routes/app_pages.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ERP System',
      initialBinding: AppBinding(),
      getPages: AppPages.routes,
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        fontFamily: "SourceSansPro",
      ),
    );
  }
}
