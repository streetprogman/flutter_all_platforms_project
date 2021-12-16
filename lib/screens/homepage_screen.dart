import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/default_container.dart';
import 'package:flutter_all_platforms_project/components/drawer_item.dart';
import 'package:flutter_all_platforms_project/components/homepage/homepage_card.dart';
import 'package:flutter_all_platforms_project/components/main_drawer.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';
import 'package:flutter_all_platforms_project/controllers/homepage_controller.dart';
import 'package:flutter_all_platforms_project/routes/app_pages.dart';
import 'package:get/get.dart';

class HomepageScreen extends GetView<HomepageController> {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Предприятие Садко №1",
        ),
      ),
      drawer: MainDrawer(),
      body: DefaultContainer(
        child: Column(
          children: [
            HomepageCard(
              title: "Info title",
              center: 0.8,
              info: "Information",
            ),
            //TODO:Additional information
          ],
        ),
      ),
    );
  }
}
