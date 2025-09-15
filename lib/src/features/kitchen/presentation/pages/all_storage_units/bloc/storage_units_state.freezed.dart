// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_units_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StorageUnitsState {

 Room? get selectedRoom; List<StorageUnit> get allStorageUnits; List<StorageUnit> get selectedStorageUnits; bool get isLoading; bool get hasError; int? get editingStorageUnitId; String? get lastActionMessage;
/// Create a copy of StorageUnitsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageUnitsStateCopyWith<StorageUnitsState> get copyWith => _$StorageUnitsStateCopyWithImpl<StorageUnitsState>(this as StorageUnitsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageUnitsState&&(identical(other.selectedRoom, selectedRoom) || other.selectedRoom == selectedRoom)&&const DeepCollectionEquality().equals(other.allStorageUnits, allStorageUnits)&&const DeepCollectionEquality().equals(other.selectedStorageUnits, selectedStorageUnits)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.editingStorageUnitId, editingStorageUnitId) || other.editingStorageUnitId == editingStorageUnitId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedRoom,const DeepCollectionEquality().hash(allStorageUnits),const DeepCollectionEquality().hash(selectedStorageUnits),isLoading,hasError,editingStorageUnitId,lastActionMessage);

@override
String toString() {
  return 'StorageUnitsState(selectedRoom: $selectedRoom, allStorageUnits: $allStorageUnits, selectedStorageUnits: $selectedStorageUnits, isLoading: $isLoading, hasError: $hasError, editingStorageUnitId: $editingStorageUnitId, lastActionMessage: $lastActionMessage)';
}


}

/// @nodoc
abstract mixin class $StorageUnitsStateCopyWith<$Res>  {
  factory $StorageUnitsStateCopyWith(StorageUnitsState value, $Res Function(StorageUnitsState) _then) = _$StorageUnitsStateCopyWithImpl;
@useResult
$Res call({
 Room? selectedRoom, List<StorageUnit> allStorageUnits, List<StorageUnit> selectedStorageUnits, bool isLoading, bool hasError, int? editingStorageUnitId, String? lastActionMessage
});




}
/// @nodoc
class _$StorageUnitsStateCopyWithImpl<$Res>
    implements $StorageUnitsStateCopyWith<$Res> {
  _$StorageUnitsStateCopyWithImpl(this._self, this._then);

  final StorageUnitsState _self;
  final $Res Function(StorageUnitsState) _then;

/// Create a copy of StorageUnitsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedRoom = freezed,Object? allStorageUnits = null,Object? selectedStorageUnits = null,Object? isLoading = null,Object? hasError = null,Object? editingStorageUnitId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_self.copyWith(
selectedRoom: freezed == selectedRoom ? _self.selectedRoom : selectedRoom // ignore: cast_nullable_to_non_nullable
as Room?,allStorageUnits: null == allStorageUnits ? _self.allStorageUnits : allStorageUnits // ignore: cast_nullable_to_non_nullable
as List<StorageUnit>,selectedStorageUnits: null == selectedStorageUnits ? _self.selectedStorageUnits : selectedStorageUnits // ignore: cast_nullable_to_non_nullable
as List<StorageUnit>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,editingStorageUnitId: freezed == editingStorageUnitId ? _self.editingStorageUnitId : editingStorageUnitId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StorageUnitsState].
extension StorageUnitsStatePatterns on StorageUnitsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorageUnitsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorageUnitsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorageUnitsState value)  $default,){
final _that = this;
switch (_that) {
case _StorageUnitsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorageUnitsState value)?  $default,){
final _that = this;
switch (_that) {
case _StorageUnitsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Room? selectedRoom,  List<StorageUnit> allStorageUnits,  List<StorageUnit> selectedStorageUnits,  bool isLoading,  bool hasError,  int? editingStorageUnitId,  String? lastActionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorageUnitsState() when $default != null:
return $default(_that.selectedRoom,_that.allStorageUnits,_that.selectedStorageUnits,_that.isLoading,_that.hasError,_that.editingStorageUnitId,_that.lastActionMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Room? selectedRoom,  List<StorageUnit> allStorageUnits,  List<StorageUnit> selectedStorageUnits,  bool isLoading,  bool hasError,  int? editingStorageUnitId,  String? lastActionMessage)  $default,) {final _that = this;
switch (_that) {
case _StorageUnitsState():
return $default(_that.selectedRoom,_that.allStorageUnits,_that.selectedStorageUnits,_that.isLoading,_that.hasError,_that.editingStorageUnitId,_that.lastActionMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Room? selectedRoom,  List<StorageUnit> allStorageUnits,  List<StorageUnit> selectedStorageUnits,  bool isLoading,  bool hasError,  int? editingStorageUnitId,  String? lastActionMessage)?  $default,) {final _that = this;
switch (_that) {
case _StorageUnitsState() when $default != null:
return $default(_that.selectedRoom,_that.allStorageUnits,_that.selectedStorageUnits,_that.isLoading,_that.hasError,_that.editingStorageUnitId,_that.lastActionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _StorageUnitsState implements StorageUnitsState {
  const _StorageUnitsState({required this.selectedRoom, required final  List<StorageUnit> allStorageUnits, required final  List<StorageUnit> selectedStorageUnits, required this.isLoading, required this.hasError, this.editingStorageUnitId, this.lastActionMessage}): _allStorageUnits = allStorageUnits,_selectedStorageUnits = selectedStorageUnits;
  

@override final  Room? selectedRoom;
 final  List<StorageUnit> _allStorageUnits;
@override List<StorageUnit> get allStorageUnits {
  if (_allStorageUnits is EqualUnmodifiableListView) return _allStorageUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allStorageUnits);
}

 final  List<StorageUnit> _selectedStorageUnits;
@override List<StorageUnit> get selectedStorageUnits {
  if (_selectedStorageUnits is EqualUnmodifiableListView) return _selectedStorageUnits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedStorageUnits);
}

@override final  bool isLoading;
@override final  bool hasError;
@override final  int? editingStorageUnitId;
@override final  String? lastActionMessage;

/// Create a copy of StorageUnitsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageUnitsStateCopyWith<_StorageUnitsState> get copyWith => __$StorageUnitsStateCopyWithImpl<_StorageUnitsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorageUnitsState&&(identical(other.selectedRoom, selectedRoom) || other.selectedRoom == selectedRoom)&&const DeepCollectionEquality().equals(other._allStorageUnits, _allStorageUnits)&&const DeepCollectionEquality().equals(other._selectedStorageUnits, _selectedStorageUnits)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.editingStorageUnitId, editingStorageUnitId) || other.editingStorageUnitId == editingStorageUnitId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedRoom,const DeepCollectionEquality().hash(_allStorageUnits),const DeepCollectionEquality().hash(_selectedStorageUnits),isLoading,hasError,editingStorageUnitId,lastActionMessage);

@override
String toString() {
  return 'StorageUnitsState(selectedRoom: $selectedRoom, allStorageUnits: $allStorageUnits, selectedStorageUnits: $selectedStorageUnits, isLoading: $isLoading, hasError: $hasError, editingStorageUnitId: $editingStorageUnitId, lastActionMessage: $lastActionMessage)';
}


}

/// @nodoc
abstract mixin class _$StorageUnitsStateCopyWith<$Res> implements $StorageUnitsStateCopyWith<$Res> {
  factory _$StorageUnitsStateCopyWith(_StorageUnitsState value, $Res Function(_StorageUnitsState) _then) = __$StorageUnitsStateCopyWithImpl;
@override @useResult
$Res call({
 Room? selectedRoom, List<StorageUnit> allStorageUnits, List<StorageUnit> selectedStorageUnits, bool isLoading, bool hasError, int? editingStorageUnitId, String? lastActionMessage
});




}
/// @nodoc
class __$StorageUnitsStateCopyWithImpl<$Res>
    implements _$StorageUnitsStateCopyWith<$Res> {
  __$StorageUnitsStateCopyWithImpl(this._self, this._then);

  final _StorageUnitsState _self;
  final $Res Function(_StorageUnitsState) _then;

/// Create a copy of StorageUnitsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedRoom = freezed,Object? allStorageUnits = null,Object? selectedStorageUnits = null,Object? isLoading = null,Object? hasError = null,Object? editingStorageUnitId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_StorageUnitsState(
selectedRoom: freezed == selectedRoom ? _self.selectedRoom : selectedRoom // ignore: cast_nullable_to_non_nullable
as Room?,allStorageUnits: null == allStorageUnits ? _self._allStorageUnits : allStorageUnits // ignore: cast_nullable_to_non_nullable
as List<StorageUnit>,selectedStorageUnits: null == selectedStorageUnits ? _self._selectedStorageUnits : selectedStorageUnits // ignore: cast_nullable_to_non_nullable
as List<StorageUnit>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,editingStorageUnitId: freezed == editingStorageUnitId ? _self.editingStorageUnitId : editingStorageUnitId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
