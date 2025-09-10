import '../../../../domain/entities/category_products.dart';

abstract class ProductsEvent {}

class CreateInitialStateEvent extends ProductsEvent {
  final int? selectedRoomId;
  final int? selectedStorageUnitId;

  CreateInitialStateEvent(this.selectedRoomId, this.selectedStorageUnitId);
}

class UpdateProductEvent extends ProductsEvent {
  final int id;
  final String name;
  final CategoryProducts category;
  DateTime? expiryDate;
  int amount;
  int? roomId;
  int? storageUnitId;

  UpdateProductEvent({
    required this.id,
    required this.name,
    required this.category,
    this.expiryDate,
    this.amount = 1,
    this.roomId,
    this.storageUnitId,
  });
}

class DeleteProductEvent extends ProductsEvent {
  final int productId;

  DeleteProductEvent(this.productId);
}

class CreateProductEvent extends ProductsEvent {
  final String name;
  final CategoryProducts category;
  DateTime? inputDate;
  DateTime? expiryDate;
  int amount;
  int? roomId;
  int? storageUnitId;

  CreateProductEvent({
    required this.name,
    required this.category,
    this.inputDate,
    this.expiryDate,
    this.amount = 1,
    this.roomId,
    this.storageUnitId,
  });
}

class SearchProductEvent extends ProductsEvent {
  final String pattern;

  SearchProductEvent(this.pattern);
}

class ResetLastActionMessageEvent extends ProductsEvent {
  ResetLastActionMessageEvent();
}
