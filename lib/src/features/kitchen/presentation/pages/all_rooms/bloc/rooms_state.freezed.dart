// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomsState {

 List<Room> get allRooms; bool get isLoading; bool get hasError; int? get editingRoomId; String? get lastActionMessage;
/// Create a copy of RoomsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomsStateCopyWith<RoomsState> get copyWith => _$RoomsStateCopyWithImpl<RoomsState>(this as RoomsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomsState&&const DeepCollectionEquality().equals(other.allRooms, allRooms)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.editingRoomId, editingRoomId) || other.editingRoomId == editingRoomId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allRooms),isLoading,hasError,editingRoomId,lastActionMessage);

@override
String toString() {
  return 'RoomsState(allRooms: $allRooms, isLoading: $isLoading, hasError: $hasError, editingRoomId: $editingRoomId, lastActionMessage: $lastActionMessage)';
}


}

/// @nodoc
abstract mixin class $RoomsStateCopyWith<$Res>  {
  factory $RoomsStateCopyWith(RoomsState value, $Res Function(RoomsState) _then) = _$RoomsStateCopyWithImpl;
@useResult
$Res call({
 List<Room> allRooms, bool isLoading, bool hasError, int? editingRoomId, String? lastActionMessage
});




}
/// @nodoc
class _$RoomsStateCopyWithImpl<$Res>
    implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._self, this._then);

  final RoomsState _self;
  final $Res Function(RoomsState) _then;

/// Create a copy of RoomsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allRooms = null,Object? isLoading = null,Object? hasError = null,Object? editingRoomId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_self.copyWith(
allRooms: null == allRooms ? _self.allRooms : allRooms // ignore: cast_nullable_to_non_nullable
as List<Room>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,editingRoomId: freezed == editingRoomId ? _self.editingRoomId : editingRoomId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomsState].
extension RoomsStatePatterns on RoomsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomsState value)  $default,){
final _that = this;
switch (_that) {
case _RoomsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomsState value)?  $default,){
final _that = this;
switch (_that) {
case _RoomsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Room> allRooms,  bool isLoading,  bool hasError,  int? editingRoomId,  String? lastActionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomsState() when $default != null:
return $default(_that.allRooms,_that.isLoading,_that.hasError,_that.editingRoomId,_that.lastActionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Room> allRooms,  bool isLoading,  bool hasError,  int? editingRoomId,  String? lastActionMessage)  $default,) {final _that = this;
switch (_that) {
case _RoomsState():
return $default(_that.allRooms,_that.isLoading,_that.hasError,_that.editingRoomId,_that.lastActionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Room> allRooms,  bool isLoading,  bool hasError,  int? editingRoomId,  String? lastActionMessage)?  $default,) {final _that = this;
switch (_that) {
case _RoomsState() when $default != null:
return $default(_that.allRooms,_that.isLoading,_that.hasError,_that.editingRoomId,_that.lastActionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RoomsState implements RoomsState {
  const _RoomsState({required final  List<Room> allRooms, required this.isLoading, required this.hasError, this.editingRoomId, this.lastActionMessage}): _allRooms = allRooms;
  

 final  List<Room> _allRooms;
@override List<Room> get allRooms {
  if (_allRooms is EqualUnmodifiableListView) return _allRooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allRooms);
}

@override final  bool isLoading;
@override final  bool hasError;
@override final  int? editingRoomId;
@override final  String? lastActionMessage;

/// Create a copy of RoomsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomsStateCopyWith<_RoomsState> get copyWith => __$RoomsStateCopyWithImpl<_RoomsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsState&&const DeepCollectionEquality().equals(other._allRooms, _allRooms)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.editingRoomId, editingRoomId) || other.editingRoomId == editingRoomId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allRooms),isLoading,hasError,editingRoomId,lastActionMessage);

@override
String toString() {
  return 'RoomsState(allRooms: $allRooms, isLoading: $isLoading, hasError: $hasError, editingRoomId: $editingRoomId, lastActionMessage: $lastActionMessage)';
}



  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// @nodoc
abstract mixin class _$RoomsStateCopyWith<$Res> implements $RoomsStateCopyWith<$Res> {
  factory _$RoomsStateCopyWith(_RoomsState value, $Res Function(_RoomsState) _then) = __$RoomsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Room> allRooms, bool isLoading, bool hasError, int? editingRoomId, String? lastActionMessage
});




}
/// @nodoc
class __$RoomsStateCopyWithImpl<$Res>
    implements _$RoomsStateCopyWith<$Res> {
  __$RoomsStateCopyWithImpl(this._self, this._then);

  final _RoomsState _self;
  final $Res Function(_RoomsState) _then;

/// Create a copy of RoomsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allRooms = null,Object? isLoading = null,Object? hasError = null,Object? editingRoomId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_RoomsState(
allRooms: null == allRooms ? _self._allRooms : allRooms // ignore: cast_nullable_to_non_nullable
as List<Room>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,editingRoomId: freezed == editingRoomId ? _self.editingRoomId : editingRoomId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
