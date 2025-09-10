import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';

class Product {
  Product({
    required this.id,
    required this.name,
    required this.category,
    this.inputDate,
    this.expiryDate,
    this.amount = 1,
    this.roomId,
    this.storageUnitId,
  });

  final int id;
  final String name;
  final CategoryProducts category;
  DateTime? inputDate;
  DateTime? expiryDate;
  int amount;
  int? roomId;
  int? storageUnitId;
}
