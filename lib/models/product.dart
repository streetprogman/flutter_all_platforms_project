class Product {
  late int? productId;
  late int categoryId;
  late String name;
  late int quantity;
  late double price;

  Product(
      { this.productId, required this.categoryId, required this.name, required this.quantity, required this.price});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    categoryId = json['categoryId'];
    name = json['name'];
    quantity = json['quantity'];
    price = json['price'];
  }

  Map<String, dynamic> toJson(bool add) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(!add)data['productId'] = this.productId;
    data['categoryId'] = this.categoryId;
    data['name'] = this.name;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    return data;
  }
}