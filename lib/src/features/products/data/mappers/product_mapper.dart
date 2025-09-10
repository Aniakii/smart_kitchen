import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';
import '../../domain/entities/product.dart';
import '../models/product_hive.dart';

class ProductMapper {
  static Product toEntity(ProductHive model) {
    return Product(
      id: model.id,
      name: model.name,
      category: convertCategory(model.category),
      inputDate: model.inputDate,
      expiryDate: model.expiryDate,
      amount: model.amount,
      roomId: model.roomId,
      storageUnitId: model.storageUnitId,
    );
  }

  static ProductHive toHiveModel(Product entity) {
    return ProductHive(
      entity.id,
      entity.name,
      entity.category.name,
      entity.amount,
      entity.inputDate,
      entity.expiryDate,
      entity.roomId,
      entity.storageUnitId,
    );
  }

  static CategoryProducts convertCategory(String categoryName) {
    return CategoryProducts.values.byName(categoryName);
  }
}
