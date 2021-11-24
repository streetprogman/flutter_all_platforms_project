import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:flutter_all_platforms_project/components/employees/employee_card.dart';
import 'package:get/get.dart';

import '../controllers/employees_controller.dart';

class EmployeesView extends GetView<EmployeesController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleText: "EmployeesView",
      children: Expanded(
        child: ListView(children: [EmployeeCard()]),
      ),
    );
  }
}
