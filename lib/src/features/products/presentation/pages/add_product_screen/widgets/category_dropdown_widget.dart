import 'package:flutter/material.dart';
import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../domain/entities/category_products.dart';

class CategoryDropdownWidget extends StatelessWidget {
  const CategoryDropdownWidget({
    super.key,
    required TextEditingController categoryController,
    required this.onSelect,
  }) : _categoryController = categoryController;

  final TextEditingController _categoryController;
  final Function(CategoryProducts?) onSelect;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<CategoryProducts>(
      controller: _categoryController,
      label: Text(AppLocalizations.of(context)!.categoryTitle),
      menuHeight: 400,
      dropdownMenuEntries: CategoryProducts.values
          .map(
            (c) => DropdownMenuEntry(
              value: c,
              label: c.name,
              leadingIcon: Icon(c.icon),
            ),
          )
          .toList(),
      onSelected: (val) => onSelect(val),
    );
  }
}
