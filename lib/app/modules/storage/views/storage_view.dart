import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:get/get.dart';

import '../controllers/storage_controller.dart';

class StorageView extends GetView<StorageController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleText: 'StorageView',
      children: Text(
        'StorageView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
