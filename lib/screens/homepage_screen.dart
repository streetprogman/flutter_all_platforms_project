import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/drawer_item.dart';
import 'package:flutter_all_platforms_project/components/homepage_card.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.appBarBackground,
        title: Text(
          "Предприятие Садко №1",
          style: Get.textTheme.headline6,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: ColorConstants.appBarBackground,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    DrawerItem(text: "Сотрудники"),
                    DrawerItem(text: "Склад"),
                    DrawerItem(text: "История транзакций"),
                    DrawerItem(text: "Настройки"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [ColorConstants.scaffoldBackground1, ColorConstants.scaffoldBackground2])),
          child: Column(
            children: [
              HomepageCard(
                title: "Info title",
                center: 0.8,
                info: "Information",
              )
            ],
          ),
        ),
      ),
    );
  }
}
