import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:flutter_all_platforms_project/components/common/text_form_fields.dart';
import 'package:flutter_all_platforms_project/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(titleText: "Вход", children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
        child: Text("Логин",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Colors.black.withOpacity(0.5),
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
          controller: controller.emailFieldController,),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
        child: Text("Пароль",style: TextStyle(fontSize: 20,color:Colors.white),),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Colors.black.withOpacity(0.5),
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
          controller: controller.passwordFieldController,),
      ),
      CupertinoButton(child: Container(
        width: Get.width,
          height: 60,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all()
          ),child: Center(child: Text("Войти",style: TextStyle(fontSize: 25),))), onPressed: (){
        controller.login();
      })
    ]
    );
  }
}
