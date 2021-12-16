import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      pressedOpacity: 0.7,
      onPressed: () {  },
      child: Padding(
        padding: const EdgeInsets.all(10),
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
                  Text("Name Lastname",style: TextStyle(fontSize: 24),),
                  Text("Position"),
                  Text("31.08.1999"),
                  Text("20000\$"),

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
