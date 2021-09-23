import 'package:flutter_all_platforms_project/bindings/login_binding.dart';
import 'package:flutter_all_platforms_project/screens/login_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
