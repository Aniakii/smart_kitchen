import 'package:flutter/material.dart';
import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../domain/entities/product.dart';

class DetailsSectionWidget extends StatelessWidget {
  const DetailsSectionWidget({super.key, required this.selectedProduct});

  final Product selectedProduct;

  String _dateToString(DateTime? date, BuildContext context) {
    return date != null
        ? "${date.day}/${date.month}/${date.year}"
        : AppLocalizations.of(context)!.notIncludedLabel;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.detailsLabel,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ListTile(
          leading: Icon(Icons.scale),
          title: Text(AppLocalizations.of(context)!.amountLabel),
          trailing: Text(
            "${selectedProduct.amount}",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        ListTile(
          leading: Icon(Icons.date_range),
          title: Text(AppLocalizations.of(context)!.inputDateLabel),
          trailing: Text(
            _dateToString(selectedProduct.inputDate, context),
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text(AppLocalizations.of(context)!.expiryDateLabel),
          trailing: Text(
            _dateToString(selectedProduct.expiryDate, context),
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
