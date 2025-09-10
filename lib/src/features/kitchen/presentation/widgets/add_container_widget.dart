import 'package:flutter/material.dart';
import '../../../../core/l10n/app_localizations.dart';

class AddContainerWidget extends StatelessWidget {
  const AddContainerWidget({
    super.key,
    required TextEditingController newRoomController,
    required this.addFunction,
    required this.hintText,
  }) : _newRoomController = newRoomController;

  final TextEditingController _newRoomController;
  final String hintText;
  final VoidCallback addFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _newRoomController,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none,
          ),
          prefixIcon: IconButton(
            onPressed: () {
              final name = _newRoomController.text;
              if (name.isNotEmpty) {
                addFunction();
                _newRoomController.clear();
                FocusScope.of(context).unfocus();
              } else {
                final snackBar = SnackBar(
                  content: Text(AppLocalizations.of(context)!.errorEmptyName),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            icon: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
