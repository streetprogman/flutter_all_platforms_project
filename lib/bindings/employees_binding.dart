import 'package:flutter_all_platforms_project/controllers/employees_controller.dart';
import 'package:get/get.dart';

class EmployeesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put<EmployeesController>(EmployeesController());
    // Get.put<ApiService>(ApiService(), permanent: true);
  }
}
