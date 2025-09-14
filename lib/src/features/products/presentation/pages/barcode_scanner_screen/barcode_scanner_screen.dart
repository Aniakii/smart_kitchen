import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../../core/l10n/app_localizations.dart';

@RoutePage()
class BarcodeScannerScreen extends StatelessWidget {
  final _controller = MobileScannerController();
  final ValueNotifier<bool> _isPopping = ValueNotifier(false);

  BarcodeScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.barcodeTitle)),
      body: MobileScanner(
        controller: _controller,
        onDetect: (capture) {
          if (_isPopping.value) return;
          final code = capture.barcodes.first.rawValue;
          if (code != null) {
            _isPopping.value = true;
            _controller.stop();
            context.router.pop<String>(code);
          }
        },
      ),
    );
  }
}
