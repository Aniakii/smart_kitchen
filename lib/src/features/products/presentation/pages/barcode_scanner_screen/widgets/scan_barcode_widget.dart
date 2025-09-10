import 'package:flutter/material.dart';
import '../../../../../../core/l10n/app_localizations.dart';

class ScanBarcodeWidget extends StatelessWidget {
  const ScanBarcodeWidget({super.key, required this.scanBarcode});

  final VoidCallback scanBarcode;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.qr_code_scanner),
        title: Text(AppLocalizations.of(context)!.barcodeLabel),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: scanBarcode,
      ),
    );
  }
}
