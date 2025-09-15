import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_kitchen/src/features/locations/domain/entities/storage_unit.dart';
import '../../../../domain/entities/room.dart';

part 'storage_units_state.freezed.dart';

@freezed
class StorageUnitsState with _$StorageUnitsState {
  const factory StorageUnitsState({
    required final Room? selectedRoom,
    required final List<StorageUnit> allStorageUnits,
    required final List<StorageUnit> selectedStorageUnits,
    required final bool isLoading,
    required final bool hasError,
    final int? editingStorageUnitId,
    final String? lastActionMessage,
  }) = _StorageUnitsState;

  factory StorageUnitsState.initial() => StorageUnitsState(
    selectedRoom: null,
    allStorageUnits: [],
    selectedStorageUnits: [],
    isLoading: true,
    hasError: false,
    editingStorageUnitId: null,
    lastActionMessage: null,
  );

  @override
  List<StorageUnit> get allStorageUnits => throw UnimplementedError();

  @override
  int? get editingStorageUnitId => throw UnimplementedError();

  @override
  bool get hasError => throw UnimplementedError();

  @override
  bool get isLoading => throw UnimplementedError();

  @override
  String? get lastActionMessage => throw UnimplementedError();

  @override
  Room? get selectedRoom => throw UnimplementedError();

  @override
  List<StorageUnit> get selectedStorageUnits => throw UnimplementedError();
}
