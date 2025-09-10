import 'package:flutter/material.dart';
import '../../../../../../core/l10n/app_localizations.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required this.expiryDate,
    required this.onSelect,
  });

  final DateTime? expiryDate;
  final Function(DateTime?) onSelect;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.date_range),
      title: Text(
        expiryDate != null
            ? '${expiryDate!.day}/${expiryDate!.month}/${expiryDate!.year}'
            : AppLocalizations.of(context)!.noDateLabel,
      ),
      trailing: TextButton(
        onPressed: () async {
          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: expiryDate ?? DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2030),
          );
          onSelect(pickedDate);
        },
        child: Text(AppLocalizations.of(context)!.dateButton),
      ),
    );
  }
}
