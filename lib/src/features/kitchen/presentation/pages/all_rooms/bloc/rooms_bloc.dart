import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/create_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/delete_room.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/get_storage_units_count.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/usecases/update_room.dart';
import '../../../../domain/entities/room.dart';
import '../../../../domain/usecases/get_rooms.dart';
import 'rooms_event.dart';
import 'rooms_state.dart';

class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  final GetRooms _getRooms;
  final UpdateRoom _updateRoom;
  final CreateRoom _createRoom;
  final DeleteRoom _deleteRoom;
  final GetStorageUnitsCount _getStorageUnitsCount;

  RoomsBloc(
    this._getRooms,
    this._updateRoom,
    this._createRoom,
    this._deleteRoom,
    this._getStorageUnitsCount,
  ) : super(RoomsState.initial()) {
    on<CreateInitialStateEvent>(_createInitialState);
    on<StartEditingRoomNameEvent>(_onEditRoomNameEvent);
    on<UpdateRoomNameEvent>(_onUpdateRoomNameEvent);
    on<DeleteRoomEvent>(_onDeleteRoomEvent);
    on<CreateRoomEvent>(_onCreateRoomEvent);
    on<ResetLastActionMessageEvent>(_onResetLastActionMessageEvent);
  }

  Room getRoomById(int id) {
    return state.allRooms.firstWhere((r) => r.id == id);
  }

  List<Room> getAllRooms() {
    return state.allRooms;
  }

  int getCount(int id) {
    return _getStorageUnitsCount(id);
  }

  void _createInitialState(
    CreateInitialStateEvent event,
    Emitter<RoomsState> emit,
  ) async {
    try {
      final rooms = _getRooms();

      emit(state.copyWith(allRooms: rooms, isLoading: false));
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to fetch rooms: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onEditRoomNameEvent(
    StartEditingRoomNameEvent event,
    Emitter<RoomsState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          editingRoomId: event.roomId,
          lastActionMessage: null,
          hasError: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to edit room: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onUpdateRoomNameEvent(
    UpdateRoomNameEvent event,
    Emitter<RoomsState> emit,
  ) async {
    try {
      await _updateRoom(event.roomId, event.roomName);
      final updatedRooms = _getRooms();
      emit(
        state.copyWith(
          allRooms: updatedRooms,
          editingRoomId: null,
          hasError: false,
          lastActionMessage: 'Room successfully updated!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to update room: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onDeleteRoomEvent(
    DeleteRoomEvent event,
    Emitter<RoomsState> emit,
  ) async {
    try {
      await _deleteRoom(event.roomId);
      final updatedRooms = _getRooms();
      emit(
        state.copyWith(
          allRooms: updatedRooms,
          hasError: false,
          lastActionMessage: 'Room successfully deleted!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to delete room: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onCreateRoomEvent(
    CreateRoomEvent event,
    Emitter<RoomsState> emit,
  ) async {
    try {
      await _createRoom(event.roomName);
      final updatedRooms = _getRooms();
      emit(
        state.copyWith(
          allRooms: updatedRooms,
          hasError: false,
          lastActionMessage: 'Room successfully created!',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          lastActionMessage: 'Failed to create room: $e',
          hasError: true,
        ),
      );
    }
  }

  void _onResetLastActionMessageEvent(
    ResetLastActionMessageEvent event,
    Emitter<RoomsState> emit,
  ) {
    emit(state.copyWith(lastActionMessage: null));
  }
}
