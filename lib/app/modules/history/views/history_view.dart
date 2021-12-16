import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleText: "HistoryView",
      children: Center(
        child: Text(
          'HistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
