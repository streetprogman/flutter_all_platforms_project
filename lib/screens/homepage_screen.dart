import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/app/modules/employees/views/employees_view.dart';
import 'package:flutter_all_platforms_project/app/modules/history/views/history_view.dart';
import 'package:flutter_all_platforms_project/app/modules/settings/views/settings_view.dart';
import 'package:flutter_all_platforms_project/app/modules/storage/views/storage_view.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:flutter_all_platforms_project/components/common/drawer_item.dart';
import 'package:flutter_all_platforms_project/components/homepage/homepage_card.dart';
import 'package:flutter_all_platforms_project/constants/color_constants.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      titleText: "Предприятие Садко №1",
      scaffoldDrawer: Drawer(
        child: Container(
          color: ColorConstants.appBarBackground,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    DrawerItem(text: "Сотрудники", pageLink: () => EmployeesView()),
                    DrawerItem(text: "Склад", pageLink: () => StorageView()),
                    DrawerItem(text: "История транзакций", pageLink: () => HistoryView()),
                    DrawerItem(text: "Настройки", pageLink: () => SettingsView()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      children: Column(
        children: [
          HomepageCard(
            title: "Info title",
            center: 0.8,
            info: "Information",
          )
        ],
      ),
    );
  }
}
