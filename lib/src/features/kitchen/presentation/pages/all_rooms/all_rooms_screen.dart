import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/app/theme/app_colors.dart';
import 'package:smart_kitchen/src/core/routing/app_router.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_rooms/bloc/rooms_event.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_bloc.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../widgets/add_container_widget.dart';
import '../../widgets/container_tile_widget.dart';
import '../../widgets/edit_name_widget.dart';
import '../all_storage_units/bloc/storage_units_state.dart';
import 'bloc/rooms_bloc.dart';
import 'bloc/rooms_state.dart';

class AllRoomsScreen extends StatefulWidget {
  const AllRoomsScreen({super.key});

  @override
  State<AllRoomsScreen> createState() => _AllRoomsScreenState();
}

class _AllRoomsScreenState extends State<AllRoomsScreen> {
  final _newRoomController = TextEditingController();
  final _editRoomController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<RoomsBloc>().add(CreateInitialStateEvent());
  }

  @override
  void dispose() {
    _newRoomController.dispose();
    _editRoomController.dispose();
    super.dispose();
  }

  void _listener(BuildContext context, RoomsState state) {
    if (state.lastActionMessage != null) {
      final snackBar = SnackBar(
        content: Text(state.lastActionMessage!),
        backgroundColor: state.hasError ? null : AppColors.success,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      context.read<RoomsBloc>().add(ResetLastActionMessageEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RoomsBloc, RoomsState>(
      listener: (context, state) => _listener(context, state),
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Column(
            children: [
              AddContainerWidget(
                newRoomController: _newRoomController,
                addFunction: () {
                  context.read<RoomsBloc>().add(
                    CreateRoomEvent(_newRoomController.text),
                  );
                },
                hintText: AppLocalizations.of(context)!.newRoomHint,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.allRooms.length,
                  itemBuilder: (BuildContext context, int index) {
                    final presentedRoom = state.allRooms[index];

                    if (state.editingRoomId == presentedRoom.id) {
                      _editRoomController.text = presentedRoom.name;
                      return EditNameWidget(
                        editRoomController: _editRoomController,
                        updateNameFunction: () {
                          context.read<RoomsBloc>().add(
                            UpdateRoomNameEvent(
                              presentedRoom.id,
                              _editRoomController.text,
                            ),
                          );
                        },
                      );
                    } else {
                      return ContainerTileWidget<
                        StorageUnitsBloc,
                        StorageUnitsState
                      >(
                        name: presentedRoom.name,
                        subtitle: AppLocalizations.of(
                          context,
                        )!.storageUnitLabel,
                        selector: (state, context) => context
                            .read<StorageUnitsBloc>()
                            .getAllStorageUnits()
                            .where((s) => s.roomId == presentedRoom.id)
                            .length,
                        onSelect: () {
                          context.router.push(
                            RoomDetailsRoute(selectedRoom: presentedRoom),
                          );
                        },
                        onEdit: () {
                          context.read<RoomsBloc>().add(
                            StartEditingRoomNameEvent(presentedRoom.id),
                          );
                        },
                        onDelete: () {
                          context.read<RoomsBloc>().add(
                            DeleteRoomEvent(presentedRoom.id),
                          );
                        },
                        icon: Icons.meeting_room,
                      );
                    }
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
