import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/text_form_fields.dart';
import 'package:flutter_all_platforms_project/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return WillPopScope(
        onWillPop: () async {
          return controller.loading.isFalse;
        },
        child: GestureDetector(
          onTap: () => Get.focusScope!.unfocus(),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        'participants_portal'.tr.toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                            fontSize: 15,
                            fontFamily: "Roboto"),
                      ),
                    ),
                    Text(
                      "title",
                      style: TextStyle(color: Colors.red, fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(70, 12, 70, 50),
                      child: Text(
                        "announcement.descriptionShort",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    emailFormField(controller.emailFieldController),
                    PasswordFormField(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: controller.loading.isTrue
                                ? null
                                : () {
                                    //controller.login(announcement.id);
                                  },
                            child: controller.loading.isTrue
                                ? CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,
                                    ),
                                  )
                                : Text(
                                    "sign_in".tr,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                                  )),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 0),
                    //   child: TextButton(
                    //       onPressed: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                    //       child: Text(
                    //         "forgot_password".tr,
                    //         style: TextStyle(decoration: TextDecoration.underline, color: ColorConstants.darkGreyText),
                    //       )),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
