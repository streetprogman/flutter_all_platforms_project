import 'package:flutter_all_platforms_project/controllers/emloyees_controller.dart';
import 'package:flutter_all_platforms_project/controllers/homepage_controller.dart';
import 'package:get/get.dart';

class HomepageBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put<HomepageController>(HomepageController());
    // Get.put<ApiService>(ApiService(), permanent: true);
  }
}
