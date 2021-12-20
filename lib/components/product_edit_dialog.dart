import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/controllers/employees_controller.dart';
import 'package:flutter_all_platforms_project/controllers/storage_controller.dart';
import 'package:get/get.dart';

class ProductEditDialog extends StatelessWidget {
  final StorageController controller;
  final bool edit;
  ProductEditDialog({required this.controller, required this.edit});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 40.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.black.withOpacity(0.9)
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Название :",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.2))
                      )
                  ),
                  controller: controller.nameEditingController,),
                SizedBox(height: 10,),
                Text("ID категории :",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                  controller: controller.categoryEditingController,),
                SizedBox(height: 10,),              Text("Количество :",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),

                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                  controller: controller.quantityEditingController,),
                SizedBox(height: 10,),              Text("Цена :",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),

                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey)
                      )
                  ),
                  controller: controller.priceEditingController,),
                SizedBox(height: 10,),
                Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0),border: Border.all(color: Colors.grey)),
                    width:Get.width,child:CupertinoButton(onPressed: (){
                  controller.editOrAddProduct(!edit);
                },  child:Center(child: Text(edit?"Изменить":"Добавить")))),
                edit?Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0),border: Border.all(color: Colors.grey)),
                      width:Get.width,child:CupertinoButton(onPressed: (){
                    controller.deleteProduct();
                  },  child:Center(child: Text("Удалить",style: TextStyle(color: Colors.red),)))),
                ):Container(),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0),border: Border.all(color: Colors.grey)),
                      width:Get.width,child:CupertinoButton(onPressed: (){
                    Get.back();
                  },  child:Center(child: Text("Назад")))),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
