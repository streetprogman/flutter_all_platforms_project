import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subTitle;
  final onTap;

  const DrawerItem({required this.icon,required this.title,required this.subTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
          ),
          width: double.infinity,
          child: Row(
            children: [
              Container(
                  width: 50,
                  child: icon),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 10,bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text(subTitle,style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
                ),
              )
            ],
          ),
        )
        // ListTile(
        //   tileColor: Colors.black,
        //   leading: icon,
        //   title: title,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20)
        //   ),
        // ),
      ),
    );
  }
}
