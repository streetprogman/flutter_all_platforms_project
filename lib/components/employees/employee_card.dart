import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/models/employee.dart';

class EmployeeCard extends StatelessWidget {
  final Employee employee;
  const EmployeeCard({Key? key, required this.employee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(0.3)),
      child: Column(
        children: [Text("card")],
      ),
    );
  }
}
