import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/default_container.dart';
import 'package:flutter_all_platforms_project/components/employee_card.dart';
import 'package:flutter_all_platforms_project/components/homepage_card.dart';
import 'package:flutter_all_platforms_project/components/main_drawer.dart';
import 'package:flutter_all_platforms_project/controllers/emloyees_controller.dart';
import 'package:get/get.dart';

class EmployeesScreen extends GetView<EmployeesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      drawer: MainDrawer(),
      body: DefaultContainer(
        child: Column(
children: [
  EmployeeCard()
],
        ),
      ),
    );
  }
}
