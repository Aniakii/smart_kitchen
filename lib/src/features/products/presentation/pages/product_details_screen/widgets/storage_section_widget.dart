import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/extensions/capitalize_extension.dart';
import '../../../../../../core/l10n/app_localizations.dart';

class StorageSectionWidget extends StatelessWidget {
  const StorageSectionWidget({
    super.key,
    required this.roomName,
    required this.storageUnitName,
  });

  final String roomName;
  final String storageUnitName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.storageLabel,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        ListTile(
          leading: Icon(Icons.meeting_room),
          title: Text(
            AppLocalizations.of(context)!.roomLabel.capitalizeEachWord(),
          ),
          trailing: Text(
            roomName,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        ListTile(
          leading: Icon(Icons.inventory),
          title: Text(
            AppLocalizations.of(context)!.storageUnitLabel.capitalizeEachWord(),
          ),
          trailing: Text(
            storageUnitName,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
