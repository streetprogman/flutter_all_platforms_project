import 'package:flutter_all_platforms_project/controllers/emloyees_controller.dart';
import 'package:flutter_all_platforms_project/controllers/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put<SettingsController>(SettingsController());
    // Get.put<ApiService>(ApiService(), permanent: true);
  }
}
