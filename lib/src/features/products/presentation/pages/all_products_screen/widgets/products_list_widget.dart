import 'package:flutter/material.dart';
import '../../../../domain/entities/product.dart';
import 'product_tile_widget.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({
    super.key,
    required this.onSelect,
    required this.onDelete,
    required this.presentedProducts,
  });

  final List<Product> presentedProducts;
  final Function(int) onSelect;
  final Function(int) onDelete;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: presentedProducts.length,
        itemBuilder: (BuildContext context, int index) {
          final presentedProduct = presentedProducts[index];
          return ProductTileWidget(
            presentedProduct: presentedProduct,
            onSelect: () => onSelect(presentedProduct.id),
            onDelete: () => onDelete(presentedProduct.id),
          );
        },
      ),
    );
  }
}
