import 'package:flutter_all_platforms_project/services/api_service.dart';
import 'package:flutter_all_platforms_project/services/auth_service.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
      // Get.put<AuthService>(AuthService(), permanent: true);
      Get.lazyPut<AuthService>(()=>AuthService());

      Get.lazyPut<ApiService>(()=>ApiService());
  }
}
