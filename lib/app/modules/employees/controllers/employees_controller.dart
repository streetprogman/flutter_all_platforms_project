import 'package:flutter_all_platforms_project/models/employee.dart';
import 'package:get/get.dart';

class EmployeesController extends GetxController {
  var employees = List<Employee>.empty(growable: true).obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
