class StorageItem {
  final id;
  final name;
  final category;
  final buyPrice;
  final sellPrice;
  final amount;
  final CalculusType calculusType;

  StorageItem(this.id, this.name, this.category, this.buyPrice, this.sellPrice, this.amount, this.calculusType);
}

enum CalculusType {
  ST,
  KG,
  LI,
}
