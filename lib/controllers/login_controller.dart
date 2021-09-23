import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../services/auth_service.dart';

class LoginController extends GetxController {
  final AuthService authService = Get.put(AuthService());
  var emailFieldController = new TextEditingController();
  var passwordFieldController = new TextEditingController();
  var isPasswordShown = false.obs;
  final formKey = GlobalKey<FormState>();
  var loading = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void resetForm() {
    formKey.currentState!.reset();
    emailFieldController.text = '';
    passwordFieldController.text = '';
    // focusNode.requestFocus();
  }

  void login(int announcementId) async {
    // box.write(Keys.conferenceId, announcementId);
    loading.value = true;
    if (!formKey.currentState!.validate()) {
      loading.value = false;
      return;
    }
    authService.signInWithEmailAndPassword(email: emailFieldController.text, password: passwordFieldController.text);
  }

  @override
  void onClose() {}
}
