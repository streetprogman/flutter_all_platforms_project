import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/routes/app_pages.dart';
import 'package:get/get.dart';

import 'drawer_item.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple.withOpacity(0.2),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height:Get.height*0.05,),
                  DrawerItem(
                    icon: Icon(Icons.home,color: Colors.white,),
                    title:"Домашняя страница",
                    subTitle: "Просмотр общей аналитики и данных",
                    onTap: ()=>Get.toNamed(Routes.HOMEPAGE),
                  ),
                  DrawerItem(
                    icon: Icon(Icons.person,color: Colors.white,),
                    title:"Сотрудники",
                    subTitle: "Просмотр данных о сотрудниках(Паспортные данные,график)",
                    onTap: ()=>Get.toNamed(Routes.EMPLOYEES),
                  ),
                  DrawerItem(
                    icon: Icon(Icons.all_inbox_rounded,color: Colors.white,),
                    title:"Товары/Склад",
                    subTitle: "Просмотр наличия товаров на складе",
                    onTap: ()=>Get.toNamed(Routes.STORAGE),

                  ),
                  DrawerItem(
                    icon: Icon(Icons.file_copy,color: Colors.white,),
                    title: "Бухгалтерия",
                    subTitle: "Создание отчётов о продажах, покупках товаров или данных о сотрудниках",
                  ),
                  DrawerItem(
                    icon: Icon(Icons.history,color: Colors.white,),
                    title: "История транзакций",
                    subTitle: "Информация о каждой покупке, продаже товаров",
                  ),
                  DrawerItem(
                    icon: Icon(Icons.settings_outlined,color: Colors.white,),
                    title: "Настройки",
                    subTitle: "Выбор языка приложения, цветовой гаммы и т.д.",
                    onTap: ()=>Get.toNamed(Routes.SETTINGS),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
