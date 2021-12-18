class Transaction {
  late int transactionId;
  late String timeStamp;
  late int productId;
  late String productName;
  late double price;
  late int beforeQty;
  late int soldQty;
  late int employeeId;

  Transaction(
      {required this.transactionId,
      required this.timeStamp,
      required this.productId,
      required this.productName,
      required this.price,
      required this.beforeQty,
      required this.soldQty,
      required this.employeeId});

  Transaction.fromJson(Map<String, dynamic> json) {
    transactionId = json['transactionId'];
    timeStamp = json['timeStamp'];
    productId = json['productId'];
    productName = json['productName'];
    price = json['price'];
    beforeQty = json['beforeQty'];
    soldQty = json['soldQty'];
    employeeId = json['employeeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transactionId'] = this.transactionId;
    data['timeStamp'] = this.timeStamp;
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['price'] = this.price;
    data['beforeQty'] = this.beforeQty;
    data['soldQty'] = this.soldQty;
    data['employeeId'] = this.employeeId;
    return data;
  }
}
