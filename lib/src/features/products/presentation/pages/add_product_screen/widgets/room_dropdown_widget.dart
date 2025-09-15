import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/core/extensions/capitalize_extension.dart';
import '../../../../../../core/l10n/app_localizations.dart';
import '../../../../../locations/domain/entities/room.dart';

class RoomDropdownWidget extends StatelessWidget {
  const RoomDropdownWidget({
    super.key,
    required TextEditingController roomController,
    required this.allRooms,
    required this.onSelect,
  }) : _roomController = roomController;

  final TextEditingController _roomController;
  final List<Room> allRooms;
  final Function(Room?) onSelect;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<Room?>(
      controller: _roomController,
      label: Text(AppLocalizations.of(context)!.roomLabel.capitalizeEachWord()),
      initialSelection: allRooms.firstWhereOrNull(
        (r) => r.name == _roomController.text,
      ),
      dropdownMenuEntries: [
        DropdownMenuEntry<Room?>(
          value: null,
          label: AppLocalizations.of(context)!.noRoomLabel,
          leadingIcon: Icon(Icons.clear),
        ),
        ...allRooms.map(
          (r) => DropdownMenuEntry(
            value: r,
            label: r.name,
            leadingIcon: const Icon(Icons.meeting_room),
          ),
        ),
      ],
      onSelected: (r) => onSelect(r),
    );
  }
}
