import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/l10n/app_localizations.dart';

class ContainerTileWidget<TBloc extends StateStreamableSource<TState>, TState>
    extends StatelessWidget {
  final String name;
  final String subtitle;
  final int Function(TState, BuildContext) selector;
  final VoidCallback onSelect;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final IconData icon;

  const ContainerTileWidget({
    super.key,
    required this.name,
    required this.subtitle,
    required this.selector,
    required this.onSelect,
    required this.onEdit,
    required this.onDelete,
    required this.icon,
  });

  Future<void> _showDeleteDialog(
    BuildContext context,
    String deletedObject,
    Function() deleteFunction,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            AppLocalizations.of(
              context,
            )!.deleteContainerAlertTitle(deletedObject),
          ),
          icon: Icon(size: 80, Icons.delete_forever),
          content: Text(
            AppLocalizations.of(
              context,
            )!.deleteContainerAlertContent(deletedObject),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                AppLocalizations.of(context)!.cancelButton,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                AppLocalizations.of(context)!.deleteButton,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onPressed: () {
                deleteFunction();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TBloc, TState, int>(
      selector: (state) => selector(state, context),
      builder: (context, count) {
        return ListTile(
          title: Text(name),
          subtitle: Text('$count ${count == 1 ? subtitle : '${subtitle}s'}'),
          leading: Icon(icon),
          onTap: onSelect,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: onEdit, icon: const Icon(Icons.edit)),
              IconButton(
                onPressed: () {
                  _showDeleteDialog(
                    context,
                    subtitle == AppLocalizations.of(context)!.storageUnitLabel
                        ? AppLocalizations.of(context)!.roomLabel
                        : AppLocalizations.of(context)!.storageUnitLabel,
                    onDelete,
                  );
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
