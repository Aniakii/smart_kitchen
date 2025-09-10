import '../../domain/entities/category_products.dart';

class NewProductDto {
  final String name;
  final CategoryProducts category;
  final int amount;
  final DateTime? expiryDate;
  final int? selectedRoom;
  final int? selectedStorageUnit;

  NewProductDto({
    required this.name,
    required this.category,
    required this.amount,
    this.expiryDate,
    this.selectedRoom,
    this.selectedStorageUnit,
  });
}
