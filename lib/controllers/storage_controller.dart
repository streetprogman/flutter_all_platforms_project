import 'package:flutter/cupertino.dart';
import 'package:flutter_all_platforms_project/models/category.dart';
import 'package:flutter_all_platforms_project/models/product.dart';
import 'package:flutter_all_platforms_project/services/api_service.dart';
import 'package:get/get.dart';

class StorageController extends GetxController {

  var isLoading= false.obs;
  var products = List<Product>.empty(growable: true).obs;
  var categories = List<Category>.empty(growable: true).obs;
  ApiService apiService = Get.find();
  int? currentProductId= 0;
  var categoryEditingController = new TextEditingController();
  var nameEditingController = new TextEditingController();
  var quantityEditingController = new TextEditingController();
  var priceEditingController = new TextEditingController();
  Future<void> getProductsAndCategories()async
  {
    isLoading(true);
    products.clear();
    var response =await apiService.withoutAuth.get("/products");
    for(var item in response.data)
    {
      products.add(Product.fromJson(item));
    }
    var response2 =await apiService.withoutAuth.get("/categories");
    for(var item in response2.data)
    {
      categories.add(Category.fromJson(item));
    }
    isLoading(false);
  }
  void productToTextControllers(Product product)
  {
    currentProductId =product.productId;
    categoryEditingController.text = product.categoryId.toString();
    nameEditingController.text = product.name;
    quantityEditingController.text = product.quantity.toString();
    priceEditingController.text = product.price.toString();
  }
  void clearTextControllers()
  {
    currentProductId =0;
    categoryEditingController.text = "";
    nameEditingController.text = "";
    quantityEditingController.text = "";
    priceEditingController.text ="";
  }
  Future<void> editOrAddProduct(bool add) async
  {
    try {
      Product editedProduct = new Product(productId: currentProductId, categoryId: int.parse(categoryEditingController.text), name: nameEditingController.text,quantity: int.parse( quantityEditingController.text), price: double.parse(priceEditingController.text));
      var response = add?await apiService.withAuth.post("/products", data: editedProduct.toJson(true)):await apiService.withAuth.put("/products", data: editedProduct.toJson(false));
      print(response.data);
      await getProductsAndCategories();
    }
    catch(e)
    {

    }
    finally{
      Get.back();
    }
  }

  void deleteProduct() async{
    var response = await apiService.withAuth.delete("/products/$currentProductId");
    print(response.data);
    await getProductsAndCategories();
    Get.back();
  }
  @override
  void onInit() async{
    await getProductsAndCategories();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
