import 'package:flutter_all_platforms_project/app/modules/employees/bindings/employees_binding.dart';
import 'package:flutter_all_platforms_project/app/modules/employees/views/employees_view.dart';
import 'package:flutter_all_platforms_project/app/modules/history/bindings/history_binding.dart';
import 'package:flutter_all_platforms_project/app/modules/history/views/history_view.dart';
import 'package:flutter_all_platforms_project/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_all_platforms_project/app/modules/login/views/login_view.dart';
import 'package:flutter_all_platforms_project/app/modules/settings/bindings/settings_binding.dart';
import 'package:flutter_all_platforms_project/app/modules/settings/views/settings_view.dart';
import 'package:flutter_all_platforms_project/app/modules/storage/bindings/storage_binding.dart';
import 'package:flutter_all_platforms_project/app/modules/storage/views/storage_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.STORAGE,
      page: () => StorageView(),
      binding: StorageBinding(),
    ),
    GetPage(
      name: _Paths.EMPLOYEES,
      page: () => EmployeesView(),
      binding: EmployeesBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
