import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controller.dart';
import '../../constants/color_constants.dart';
import 'borders.dart';

Widget emailFormField(TextEditingController emailFieldController) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: SizedBox(
        height: 100,
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                  child: Text("email_address".tr),
                )),
            TextFormField(
              decoration: InputDecoration(
                hintText: "naam@voorbeeld.be",
                hintStyle: TextStyle(color: ColorConstants.textFormHint, fontSize: 14, fontWeight: FontWeight.w400),
                focusedBorder: textFormFieldBorder(),
                enabledBorder: textFormFieldBorder(),
                fillColor: ColorConstants.formBackground,
                filled: true,
              ),
              controller: emailFieldController,
            ),
          ],
        ),
      ));
}

class PasswordFormField extends GetView {
  final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: SizedBox(
            height: 100,
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                      child: Text("enter_password".tr),
                    )),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "***************",
                      hintStyle:
                          TextStyle(color: ColorConstants.textFormHint, fontSize: 14, fontWeight: FontWeight.w400),
                      focusedBorder: textFormFieldBorder(),
                      enabledBorder: textFormFieldBorder(),
                      fillColor: ColorConstants.formBackground,
                      filled: true,
                      suffixIcon: Container(
                        width: 20,
                        child: IconButton(
                          icon: Icon(
                            controller.isPasswordShown.value ? Icons.visibility : Icons.visibility_off,
                            color: ColorConstants.redText,
                          ),
                          onPressed: () {
                            controller.isPasswordShown.toggle();
                          },
                        ),
                      )),
                  obscureText: controller.isPasswordShown.value,
                  controller: controller.passwordFieldController,
                ),
              ],
            ),
          )),
    );
  }
}
