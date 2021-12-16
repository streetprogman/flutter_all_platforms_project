import 'package:flutter_all_platforms_project/controllers/emloyees_controller.dart';
import 'package:flutter_all_platforms_project/controllers/storage_controller.dart';
import 'package:get/get.dart';

class StorageBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put<StorageController>(StorageController());
    // Get.put<ApiService>(ApiService(), permanent: true);
  }
}
