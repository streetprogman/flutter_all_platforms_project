class Category {
  late int categoryId;
  late String name;
  late String description;

  Category({required this.categoryId, required this.name, required this.description});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }
}