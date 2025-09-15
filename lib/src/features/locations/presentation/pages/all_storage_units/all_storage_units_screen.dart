import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/core/routing/app_router.dart';
import 'package:smart_kitchen/src/features/products/presentation/pages/all_products_screen/bloc/products_bloc.dart';
import '../../../../../app/theme/app_colors.dart';
import '../../../../../core/l10n/app_localizations.dart';
import '../../../../products/presentation/pages/all_products_screen/bloc/products_state.dart';
import '../../../domain/entities/room.dart';
import '../../widgets/add_container_widget.dart';
import '../../widgets/container_tile_widget.dart';
import '../../widgets/edit_name_widget.dart';
import 'bloc/storage_units_bloc.dart';
import 'bloc/storage_units_event.dart';
import 'bloc/storage_units_state.dart';

class AllStorageUnitsScreen extends StatefulWidget {
  const AllStorageUnitsScreen({required this.selectedRoom, super.key});

  final Room selectedRoom;

  @override
  State<AllStorageUnitsScreen> createState() => _AllRoomsScreenState();
}

class _AllRoomsScreenState extends State<AllStorageUnitsScreen> {
  final _newStorageUnitController = TextEditingController();
  final _editStorageUnitController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<StorageUnitsBloc>().add(
      CreateInitialStateEvent(widget.selectedRoom),
    );
  }

  @override
  void dispose() {
    _newStorageUnitController.dispose();
    _editStorageUnitController.dispose();
    super.dispose();
  }

  void _listener(BuildContext context, StorageUnitsState state) {
    if (state.lastActionMessage != null) {
      final snackBar = SnackBar(
        content: Text(state.lastActionMessage!),
        backgroundColor: state.hasError ? null : AppColors.success,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      context.read<StorageUnitsBloc>().add(ResetLastActionMessageEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StorageUnitsBloc, StorageUnitsState>(
      listener: (context, state) => _listener(context, state),
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Column(
            children: [
              AddContainerWidget(
                newRoomController: _newStorageUnitController,
                addFunction: () {
                  context.read<StorageUnitsBloc>().add(
                    CreateStorageUnitEvent(_newStorageUnitController.text),
                  );
                },
                hintText: AppLocalizations.of(context)!.newStorageUnitHint,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.allStorageUnits.length,
                  itemBuilder: (BuildContext context, int index) {
                    final presentedStorageUnit = state.allStorageUnits[index];

                    if (state.editingStorageUnitId == presentedStorageUnit.id) {
                      _editStorageUnitController.text =
                          presentedStorageUnit.name;
                      return EditNameWidget(
                        editRoomController: _editStorageUnitController,
                        updateNameFunction: () {
                          context.read<StorageUnitsBloc>().add(
                            UpdateStorageUnitNameEvent(
                              presentedStorageUnit.id,
                              _editStorageUnitController.text,
                            ),
                          );
                        },
                      );
                    } else {
                      return ContainerTileWidget<ProductsBloc, ProductsState>(
                        name: presentedStorageUnit.name,
                        subtitle: AppLocalizations.of(context)!.productLabel,
                        selector: (state, context) {
                          if (state.isLoading) {
                            return state.allProducts
                                .where(
                                  (p) =>
                                      p.storageUnitId ==
                                      presentedStorageUnit.id,
                                )
                                .length;
                          } else {
                            return state.allProducts
                                .where(
                                  (p) =>
                                      p.storageUnitId ==
                                      presentedStorageUnit.id,
                                )
                                .length;
                          }
                        },
                        onSelect: () {
                          context.router.push(
                            StorageUnitsDetailsRoute(
                              selectedRoom: widget.selectedRoom,
                              selectedStorageUnit: presentedStorageUnit,
                            ),
                          );
                        },
                        onEdit: () {
                          context.read<StorageUnitsBloc>().add(
                            StartEditingStorageUnitNameEvent(
                              presentedStorageUnit.id,
                            ),
                          );
                        },
                        onDelete: () {
                          context.read<StorageUnitsBloc>().add(
                            DeleteStorageUnitEvent(presentedStorageUnit.id),
                          );
                        },
                        icon: Icons.inventory,
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
