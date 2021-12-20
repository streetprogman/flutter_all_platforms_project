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
              title: "Общая прибыль",
              center: 11.2,
              info: "Общая прибыль работы предприятия",
            ),
            HomepageCard(
              title: "Прибыль за последний месяц",
              center: 22.3,
              info: "",
            ),
            HomepageCard(
              title: "Прибыль за прошлый месяц",
              center: -11.1,
              info: "",
            ),
            HomepageCard(
              title: "Прогноз на следующий месяц",
              center: 33.7,
              info: "Ожидаемая прибыль в следующем месяце",
            ),
          ],
        ),
      ),
    );
  }
}
