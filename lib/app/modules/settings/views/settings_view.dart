import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleText: "SettingsView",
      children: Center(
        child: Text(
          'SettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
