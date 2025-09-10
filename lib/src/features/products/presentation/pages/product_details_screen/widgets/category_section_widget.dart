import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';
import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../domain/entities/product.dart';

class CategorySectionWidget extends StatelessWidget {
  const CategorySectionWidget({super.key, required this.selectedProduct});

  final Product selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.categoryTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ListTile(
          leading: Icon(selectedProduct.category.icon, size: 28),
          title: Text(selectedProduct.category.name),
        ),
      ],
    );
  }
}
