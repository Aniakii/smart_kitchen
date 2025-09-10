import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_kitchen/src/features/kitchen/domain/entities/storage_unit.dart';
import '../../../../domain/entities/room.dart';

part 'storage_units_state.freezed.dart';

@freezed
class StorageUnitsState with _$StorageUnitsState {
  const factory StorageUnitsState({
    required final Room? selectedRoom,
    required final List<StorageUnit> allStorageUnits,
    required final bool isLoading,
    required final bool hasError,
    final int? editingStorageUnitId,
    final String? lastActionMessage,
  }) = _StorageUnitsState;

  factory StorageUnitsState.initial() => StorageUnitsState(
    selectedRoom: null,
    allStorageUnits: [],
    isLoading: true,
    hasError: false,
    editingStorageUnitId: null,
    lastActionMessage: null,
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
