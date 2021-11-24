import 'package:flutter_all_platforms_project/models/storage_item.dart';

class HistoryItem {
  final id;
  final StorageItem storageItem;
  final result;
  final DateTime transactionDate;

  HistoryItem(this.id, this.storageItem, this.result, this.transactionDate);
}
