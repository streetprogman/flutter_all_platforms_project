import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final text;
  const DrawerItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Container(
          padding: const EdgeInsets.only(left: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.black.withOpacity(0.5),
          ),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
