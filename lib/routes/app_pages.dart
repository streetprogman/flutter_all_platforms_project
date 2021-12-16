import 'package:flutter_all_platforms_project/bindings/employees_binding.dart';
import 'package:flutter_all_platforms_project/bindings/homepage_binding.dart';
import 'package:flutter_all_platforms_project/bindings/login_binding.dart';
import 'package:flutter_all_platforms_project/bindings/settings_binding.dart';
import 'package:flutter_all_platforms_project/bindings/storage_binding.dart';
import 'package:flutter_all_platforms_project/screens/employees_screen.dart';
import 'package:flutter_all_platforms_project/screens/homepage_screen.dart';
import 'package:flutter_all_platforms_project/screens/login_screen.dart';
import 'package:flutter_all_platforms_project/screens/settings_screen.dart';
import 'package:flutter_all_platforms_project/screens/storage_screen.dart';
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
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsScreen(),
      binding: SettingsBinding(),
    ),GetPage(
      name: _Paths.STORAGE,
      page: () => StorageScreen(),
      binding: StorageBinding(),
    ),GetPage(
      name: _Paths.EMPLOYEES,
      page: () => EmployeesScreen(),
      binding: EmployeesBinding(),
    ),GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageScreen(),
      binding: HomepageBinding(),
    ),
  ];
}
