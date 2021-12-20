import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/controllers/employees_controller.dart';
import 'package:flutter_all_platforms_project/models/employee.dart';
import 'package:get/get.dart';

import 'edit_employee_dialog.dart';

class EmployeeCard extends GetView<EmployeesController> {
  final Employee employee;
  EmployeeCard({required this.employee});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      pressedOpacity: 0.7,
      onPressed: () {
        controller.employeeToTextControllers(employee);
        Get.dialog(EmployeeEditDialog(controller: Get.find(),edit: true,));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(0.3)),
          width: double.infinity,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${employee.firstName} ${employee.lastName}",style: TextStyle(fontSize: 24),),
                  Text("${employee.position}"),
                  Text("${employee.birthDate.day<10?"0":""}${employee.birthDate.day}.${employee.birthDate.month<10?"0":""}${employee.birthDate.month}.${employee.birthDate.year}"),
                  Text("${employee.salaryPerMonth}\$"),

                ],
              ),
              Container(child: Icon(Icons.edit,color: Colors.white,))
            ],
          )
          ),
        ),
      ),
    );
  }
}
