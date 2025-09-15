import 'package:flutter/material.dart';
import 'package:smart_kitchen/src/app/theme/app_colors.dart';

class EditNameWidget extends StatelessWidget {
  const EditNameWidget({
    super.key,
    required TextEditingController editRoomController,
    required this.updateNameFunction,
  }) : _editNameController = editRoomController;

  final TextEditingController _editNameController;
  final VoidCallback updateNameFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextField(
        controller: _editNameController,
        decoration: InputDecoration(
          fillColor: AppColors.primary,
          hintStyle: TextStyle(color: AppColors.surface),
          suffixIcon: IconButton(
            onPressed: () {
              final name = _editNameController.text;
              if (name.isNotEmpty) {
                updateNameFunction();
                _editNameController.clear();
                FocusScope.of(context).unfocus();
              }
            },
            icon: Icon(Icons.check),
          ),
        ),
      ),
    );
  }
}
