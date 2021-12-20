import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:flutter_all_platforms_project/components/default_container.dart';
import 'package:flutter_all_platforms_project/components/edit_employee_dialog.dart';
import 'package:flutter_all_platforms_project/components/employee_card.dart';
import 'package:flutter_all_platforms_project/components/main_drawer.dart';
import 'package:flutter_all_platforms_project/controllers/employees_controller.dart';
import 'package:get/get.dart';

class EmployeesScreen extends GetView<EmployeesController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      actionsList: [
        IconButton(onPressed: (){
         Get.dialog(EmployeeEditDialog(controller: controller, edit: false));// controller.editOrAddEmployee(true);
        }, icon: Icon(Icons.add))
      ],
      scaffoldDrawer: MainDrawer(),
        titleText: "Сотрудники",
        children: [Obx(
        ()=> Expanded(
            child:RefreshIndicator(
              onRefresh: ()=>controller.getEmployees(),
              child: controller.isLoading.value?Center(child: CircularProgressIndicator()):ListView.builder(itemBuilder: (context,index){
                return EmployeeCard(employee:controller.employees.elementAt(index));
              },itemCount: controller.employees.length,
              ),
            ),
          ),
        )]);
  }
}
