import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/features/products/domain/entities/category_products.dart';
import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../domain/entities/product.dart';

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({
    super.key,
    required this.presentedProduct,
    required this.onSelect,
    required this.onDelete,
  });

  final Product presentedProduct;
  final VoidCallback onDelete;
  final VoidCallback onSelect;

  Future<void> _showDeleteDialog(
    BuildContext context,
    Function() deleteFunction,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context)!.deleteProductAlertTitle),
          icon: Icon(size: 80, Icons.delete_forever),
          content: Text(
            AppLocalizations.of(context)!.deleteProductAlertContent,
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                AppLocalizations.of(context)!.cancelButton,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                AppLocalizations.of(context)!.deleteButton,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onPressed: () {
                deleteFunction();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(presentedProduct.name),
      subtitle: Text(
        '${AppLocalizations.of(context)!.categoryPrefix} ${presentedProduct.category.name}',
      ),
      leading: Icon(presentedProduct.category.icon),
      onTap: onSelect,
      trailing: IconButton(
        onPressed: () {
          _showDeleteDialog(context, onDelete);
        },
        icon: Icon(Icons.remove),
      ),
    );
  }
}
