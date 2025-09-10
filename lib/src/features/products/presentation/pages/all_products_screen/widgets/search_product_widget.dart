import 'package:flutter/material.dart';
import '../../../../../../app/theme/app_colors.dart';
import '../../../../../../core/l10n/app_localizations.dart';
class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({super.key, required this.onChanged});

  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        hintStyle: WidgetStateProperty.all(
          TextStyle(color: AppColors.background),
        ),
        backgroundColor: WidgetStateProperty.all(AppColors.primaryVariant),
        leading: const Icon(Icons.search),
        hintText: AppLocalizations.of(context)!.searchHint,
        onChanged: (query) => onChanged(query),
      ),
    );
  }
}
