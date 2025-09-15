import 'package:flutter/material.dart';
import '../../../../../../app/theme/app_colors.dart';
import '../../../../../../core/l10n/app_localizations.dart';

class ProductTextFormWidget extends StatelessWidget {
  const ProductTextFormWidget({
    required TextEditingController controller,
    super.key,
    required this.label,
    required this.icon,
    required this.onChanged,
    this.textInputType,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String label;
  final IconData icon;
  final Function(String) onChanged;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        fillColor: AppColors.secondary,
        labelText: label,
        prefixIcon: Icon(icon),
      ),
      onChanged: (val) => onChanged(val),
      validator: (val) => val == null || val.trim().isEmpty
          ? AppLocalizations.of(context)!.errorNoValue
          : null,
    );
  }
}
