import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/my_app_bars.dart';
import 'package:flutter_all_platforms_project/components/common/styled_container.dart';

class DefaultScaffold extends Scaffold {
  final titleText;
  final List<Widget>children;
  final Widget? scaffoldDrawer;
  final List<Widget>? actionsList;
  const DefaultScaffold({required this.titleText, required this.children, this.scaffoldDrawer,this.actionsList, Key? key})
      : super(key: key);

  @override
  PreferredSizeWidget? get appBar => DefaultAppBar(titleText: titleText,actionsList: actionsList,);
  @override
  Widget? get body => StyledContainer(children: children);
  @override
  Widget? get drawer => scaffoldDrawer ?? null;
}
