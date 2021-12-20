import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';

class StyledContainer extends StatelessWidget {
  final List<Widget>children;
  const StyledContainer({required this.children, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [ColorConstants.scaffoldBackground1, ColorConstants.scaffoldBackground2])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children));
  }
}
