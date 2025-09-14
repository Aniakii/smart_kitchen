import '../../domain/entities/product.dart';

class ReloadProductsDto {
  ReloadProductsDto({
    required this.allProducts,
    required this.selectedProducts,
    required this.presentedProducts,
  });

  final List<Product> allProducts;
  final List<Product> selectedProducts;
  final List<Product> presentedProducts;
}
