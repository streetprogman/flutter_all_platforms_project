import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/common/DefaultScaffold.dart';
import 'package:flutter_all_platforms_project/components/main_drawer.dart';
import 'package:flutter_all_platforms_project/components/product_card.dart';
import 'package:flutter_all_platforms_project/components/product_edit_dialog.dart';
import 'package:flutter_all_platforms_project/controllers/storage_controller.dart';
import 'package:get/get.dart';

class StorageScreen extends GetView<StorageController> {
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      actionsList: [
        IconButton(onPressed: (){
          controller.clearTextControllers();
          Get.dialog(ProductEditDialog(controller: controller, edit: false));
        }, icon: Icon(Icons.add))
      ],
        scaffoldDrawer: MainDrawer(),
        titleText: "Товары",
        children: [Obx(
              ()=> Expanded(
            child:RefreshIndicator(
              onRefresh: ()=>controller.getProductsAndCategories(),
              child: controller.isLoading.value?Center(child: CircularProgressIndicator()):ListView.builder(itemBuilder: (context,index){
                return ProductCard(product:controller.products.elementAt(index),categories: controller.categories,);
              },itemCount: controller.products.length,
              ),
            ),
          ),
        )]);
  }
}
