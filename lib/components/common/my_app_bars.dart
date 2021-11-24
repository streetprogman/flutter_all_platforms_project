import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class DefaultAppBar extends AppBar {
  final String titleText;
  DefaultAppBar({required this.titleText});
  @override
  // TODO: implement backgroundColor
  Color? get backgroundColor => ColorConstants.appBarBackground;
  @override
  // TODO: implement title
  Widget? get title => Text(titleText, style: Get.textTheme.headline6);
}
