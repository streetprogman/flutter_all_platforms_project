import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({Key? key}) : super(key: key);

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
