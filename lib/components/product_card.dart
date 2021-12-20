import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_platforms_project/components/product_edit_dialog.dart';
import 'package:flutter_all_platforms_project/controllers/storage_controller.dart';
import 'package:flutter_all_platforms_project/models/category.dart';
import 'package:flutter_all_platforms_project/models/product.dart';
import 'package:get/get.dart';

class ProductCard extends GetView<StorageController> {
  final Product product;
  final List<Category> categories;
  ProductCard({required this.product, required this.categories});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      pressedOpacity: 0.7,
      onPressed: () {
        controller.productToTextControllers(product);
        Get.dialog(ProductEditDialog(controller: controller, edit: true));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: DefaultTextStyle(
          style: TextStyle(color: Colors.white),
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.black.withOpacity(0.3)),
              width: double.infinity,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${product.name}",style: TextStyle(fontSize: 24),),
                      Text("Категория: ${categories.firstWhere((element) => element.categoryId==product.categoryId).name}"),
                      Text("Цена: ${product.price}\$"),
                      Text("Количество: ${product.quantity}"),

                    ],
                  ),
                  Container(child: Icon(Icons.edit,color: Colors.white,))
                ],
              )
          ),
        ),
      ),
    );
  }
}
