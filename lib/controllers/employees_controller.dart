import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_all_platforms_project/models/employee.dart';
import 'package:flutter_all_platforms_project/services/api_service.dart';
import 'package:flutter_all_platforms_project/services/auth_service.dart';
import 'package:get/get.dart';

class EmployeesController extends GetxController {
  var isLoading= false.obs;
  var isEditLoading= false.obs;
  var employees = List<Employee>.empty(growable: true).obs;
  ApiService apiService = Get.find();
  int? currentEmployeeId= 0;
  var firstNameEditingController = new TextEditingController();
  var lastNameEditingController = new TextEditingController();
  var birthDateEditingController = new TextEditingController();
  var salaryEditingController = new TextEditingController();
  var positionEditingController = new TextEditingController();

  Future<void> getEmployees()async
  {
    isLoading(true);
    employees.clear();
    var response =await apiService.withAuth.get("/employees");
    for(var item in response.data)
    {
      employees.add(Employee.fromJson(item));
    }
    isLoading(false);
  }
  void employeeToTextControllers(Employee employee)
  {
    currentEmployeeId =employee.employeeId;
    firstNameEditingController.text= employee.firstName;
    lastNameEditingController.text = employee.lastName;
    birthDateEditingController.text = employee.birthDate.toString().substring(0,10);
    salaryEditingController.text = employee.salaryPerMonth.toString();
    positionEditingController.text = employee.position;
  }
  Future<void> editOrAddEmployee(bool add) async
  {
    try {
      isEditLoading(true);
      Employee editedEmployee = new Employee(
          employeeId: currentEmployeeId,
          firstName: firstNameEditingController.text,
          lastName: lastNameEditingController.text,
          birthDate: DateTime.parse(birthDateEditingController.text),
          salaryPerMonth: int.parse(salaryEditingController.text),
          position: positionEditingController.text);
      var response = add?await apiService.withAuth.post("/employees", data: editedEmployee.toJson(true)):await apiService.withAuth.put("/employees", data: editedEmployee.toJson(false));
      print(response.data);
    await getEmployees();
    }
    catch(e)
    {

    }
    finally{
      isEditLoading(false);
      Get.back();
    }
  }

  void deleteEmployee() async{
    var response = await apiService.withAuth.delete("/employees/$currentEmployeeId");
    print(response.data);
    await getEmployees();
    Get.back();
  }
  @override
  void onInit() async{
    await getEmployees();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
