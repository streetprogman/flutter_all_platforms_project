import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';

class DefaultContainer extends Container {
  final Widget? child;
  DefaultContainer({this.child}):super(child: child);

  @override
  Decoration? get decoration => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [ColorConstants.scaffoldBackground1, ColorConstants.scaffoldBackground2]));

  }
