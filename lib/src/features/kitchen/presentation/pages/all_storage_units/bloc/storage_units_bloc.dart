import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/delete_storage_unit.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/update_storage_unit.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_event.dart';
import 'package:smart_kitchen/src/features/kitchen/presentation/pages/all_storage_units/bloc/storage_units_state.dart';
import '../../../../domain/entities/storage_unit.dart';
import '../../../../domain/usecases/create_storage_unit.dart';
import '../../../../domain/usecases/get_storage_units.dart';
import '../../../../domain/usecases/get_storage_units_by_room.dart';

class StorageUnitsBloc extends Bloc<StorageUnitsEvent, StorageUnitsState> {
  final GetStorageUnits _getStorageUnits;
  final GetStorageUnitsByRoom _getStorageUnitsByRoom;
  final UpdateStorageUnit _updateStorageUnit;
  final CreateStorageUnit _createStorageUnit;
  final DeleteStorageUnit _deleteStorageUnit;

  StorageUnitsBloc(
    this._getStorageUnits,
    this._getStorageUnitsByRoom,
    this._updateStorageUnit,
    this._createStorageUnit,
    this._deleteStorageUnit,
  ) : super(StorageUnitsState.initial()) {
    on<CreateInitialStateEvent>(_createInitialState);
    on<StartEditingStorageUnitNameEvent>(_onEditStorageUnitNameEvent);
    on<UpdateStorageUnitNameEvent>(_onUpdateStorageUnitNameEvent);
    on<DeleteStorageUnitEvent>(_onDeleteStorageUnitEvent);
    on<CreateStorageUnitEvent>(_onCreateStorageUnitEvent);
    on<ResetLastActionMessageEvent>(_onResetLastActionMessageEvent);
  }

  void _createInitialState(
    CreateInitialStateEvent event,
    Emitter<StorageUnitsState> emit,
  ) {
    try {
      List<StorageUnit> storageUnits = [];
      if (event.selectedRoom == null) {
        storageUnits = _getStorageUnits();
      } else {
        storageUnits = _getStorageUnitsByRoom(event.selectedRoom!.id);
      }
      emit(
        state.copyWith(
          selectedRoom: event.selectedRoom,
          allStorageUnits: _getStorageUnits(),
          selectedStorageUnits: storageUnits,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to fetch storage units: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onEditStorageUnitNameEvent(
    StartEditingStorageUnitNameEvent event,
    Emitter<StorageUnitsState> emit,
  ) {
    try {
      emit(
        state.copyWith(
          editingStorageUnitId: event.storageUnitId,
          lastActionMessage: null,
          hasError: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to edit storage unit: $e',
          hasError: true,
        ),
      );
    }
  }

  Future<void> _onUpdateStorageUnitNameEvent(
    UpdateStorageUnitNameEvent event,
    Emitter<StorageUnitsState> emit,
  ) async {
    try {
      await _updateStorageUnit(event.storageUnitId, event.storageUnitName);
      final updatedStorageUnits = _getStorageUnitsByRoom(
        state.selectedRoom!.id,
      );
      emit(
        state.copyWith(
          allStorageUnits: updatedStorageUnits,
          selectedStorageUnits: _getStorageUnits(),
          editingStorageUnitId: null,
          hasError: false,
          lastActionMessage: 'Storage unit successfully updated!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to update storage unit: $e',
          hasError: true,
        ),
      );
    }
  }

  Future<void> _onDeleteStorageUnitEvent(
    DeleteStorageUnitEvent event,
    Emitter<StorageUnitsState> emit,
  ) async {
    try {
      await _deleteStorageUnit(event.storageUnitId);
      final updatedStorageUnits = _getStorageUnitsByRoom(
        state.selectedRoom!.id,
      );
      emit(
        state.copyWith(
          selectedStorageUnits: updatedStorageUnits,
          allStorageUnits: _getStorageUnits(),
          hasError: false,
          lastActionMessage: 'Storage unit successfully deleted!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to delete storage unit: $e',
          hasError: true,
        ),
      );
    }
  }

  Future<void> _onCreateStorageUnitEvent(
    CreateStorageUnitEvent event,
    Emitter<StorageUnitsState> emit,
  ) async {
    try {
      await _createStorageUnit(event.storageUnitName, state.selectedRoom!.id);
      final updatedStorageUnits = _getStorageUnitsByRoom(
        state.selectedRoom!.id,
      );
      emit(
        state.copyWith(
          allStorageUnits: _getStorageUnits(),
          selectedStorageUnits: updatedStorageUnits,
          hasError: false,
          lastActionMessage: 'Storage unit successfully created!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to create storage unit: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onResetLastActionMessageEvent(
    ResetLastActionMessageEvent event,
    Emitter<StorageUnitsState> emit,
  ) {
    emit(state.copyWith(lastActionMessage: null));
  }
}
