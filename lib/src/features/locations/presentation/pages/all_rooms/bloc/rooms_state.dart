import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/room.dart';

part 'rooms_state.freezed.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState({
    required final List<Room> allRooms,
    required final bool isLoading,
    required final bool hasError,
    final int? editingRoomId,
    final String? lastActionMessage,
  }) = _RoomsState;

  factory RoomsState.initial() => RoomsState(
    allRooms: [],
    isLoading: true,
    hasError: false,
    editingRoomId: null,
    lastActionMessage: null,
  );

  Room getRoomById(int id) => allRooms.firstWhere((r) => r.id == id);

  @override
  List<Room> get allRooms => throw UnimplementedError();

  @override
  int? get editingRoomId => throw UnimplementedError();

  @override
  bool get hasError => throw UnimplementedError();

  @override
  bool get isLoading => throw UnimplementedError();

  @override
  String? get lastActionMessage => throw UnimplementedError();
}
