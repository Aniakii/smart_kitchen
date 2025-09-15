import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/extensions/capitalize_extension.dart';
import 'package:smart_kitchen/src/features/locations/domain/entities/storage_unit.dart';
import '../../../../../../core/l10n/app_localizations.dart';

class StorageUnitDropdownWidget extends StatelessWidget {
  const StorageUnitDropdownWidget({
    super.key,
    required TextEditingController storageUnitController,
    required this.allStorageUnits,
    required this.onSelect,
    this.roomId,
  }) : _storageUnitController = storageUnitController;

  final TextEditingController _storageUnitController;
  final List<StorageUnit> allStorageUnits;
  final Function(StorageUnit?) onSelect;
  final int? roomId;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<StorageUnit?>(
      controller: _storageUnitController,
      label: Text(
        AppLocalizations.of(context)!.storageUnitLabel.capitalizeEachWord(),
      ),
      initialSelection: allStorageUnits.firstWhereOrNull(
        (s) => s.name == _storageUnitController.text,
      ),
      dropdownMenuEntries: [
        DropdownMenuEntry<StorageUnit?>(
          value: null,
          label: AppLocalizations.of(context)!.noStorageUnitLabel,
          leadingIcon: Icon(Icons.clear),
        ),
        ...allStorageUnits
            .where((s) => s.roomId == roomId)
            .map(
              (s) => DropdownMenuEntry(
                value: s,
                label: s.name,
                leadingIcon: const Icon(Icons.inventory),
              ),
            ),
      ],
      onSelected: (s) => onSelect(s),
    );
  }
}
