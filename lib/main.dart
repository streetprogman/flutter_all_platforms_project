import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/routes/app_pages.dart';
import 'package:flutter_all_platforms_project/screens/homepage_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'bindings/app_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ERP System',
      initialBinding: AppBinding(),
      getPages: AppPages.routes,
      home: HomePageScreen(), //LoginScreen(),
      theme: ThemeData(
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
        primaryColor: Colors.white,
        //scaffoldBackgroundColor: ColorConstants.scaffoldBackground1,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
