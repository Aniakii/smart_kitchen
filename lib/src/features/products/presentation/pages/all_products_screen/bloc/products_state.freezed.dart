// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState {

 List<Product> get allProducts; List<Product> get selectedProducts; List<Product> get presentedProducts; bool get hasError; bool get isLoading; int? get selectedRoomId; int? get selectedStorageUnitId; String? get lastActionMessage;
/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsStateCopyWith<ProductsState> get copyWith => _$ProductsStateCopyWithImpl<ProductsState>(this as ProductsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState&&const DeepCollectionEquality().equals(other.allProducts, allProducts)&&const DeepCollectionEquality().equals(other.selectedProducts, selectedProducts)&&const DeepCollectionEquality().equals(other.presentedProducts, presentedProducts)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedRoomId, selectedRoomId) || other.selectedRoomId == selectedRoomId)&&(identical(other.selectedStorageUnitId, selectedStorageUnitId) || other.selectedStorageUnitId == selectedStorageUnitId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allProducts),const DeepCollectionEquality().hash(selectedProducts),const DeepCollectionEquality().hash(presentedProducts),hasError,isLoading,selectedRoomId,selectedStorageUnitId,lastActionMessage);

@override
String toString() {
  return 'ProductsState(allProducts: $allProducts, selectedProducts: $selectedProducts, presentedProducts: $presentedProducts, hasError: $hasError, isLoading: $isLoading, selectedRoomId: $selectedRoomId, selectedStorageUnitId: $selectedStorageUnitId, lastActionMessage: $lastActionMessage)';
}


}

/// @nodoc
abstract mixin class $ProductsStateCopyWith<$Res>  {
  factory $ProductsStateCopyWith(ProductsState value, $Res Function(ProductsState) _then) = _$ProductsStateCopyWithImpl;
@useResult
$Res call({
 List<Product> allProducts, List<Product> selectedProducts, List<Product> presentedProducts, bool hasError, bool isLoading, int? selectedRoomId, int? selectedStorageUnitId, String? lastActionMessage
});




}
/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._self, this._then);

  final ProductsState _self;
  final $Res Function(ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allProducts = null,Object? selectedProducts = null,Object? presentedProducts = null,Object? hasError = null,Object? isLoading = null,Object? selectedRoomId = freezed,Object? selectedStorageUnitId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_self.copyWith(
allProducts: null == allProducts ? _self.allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,selectedProducts: null == selectedProducts ? _self.selectedProducts : selectedProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,presentedProducts: null == presentedProducts ? _self.presentedProducts : presentedProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedRoomId: freezed == selectedRoomId ? _self.selectedRoomId : selectedRoomId // ignore: cast_nullable_to_non_nullable
as int?,selectedStorageUnitId: freezed == selectedStorageUnitId ? _self.selectedStorageUnitId : selectedStorageUnitId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns on ProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsState value)  $default,){
final _that = this;
switch (_that) {
case _ProductsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Product> allProducts,  List<Product> selectedProducts,  List<Product> presentedProducts,  bool hasError,  bool isLoading,  int? selectedRoomId,  int? selectedStorageUnitId,  String? lastActionMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
return $default(_that.allProducts,_that.selectedProducts,_that.presentedProducts,_that.hasError,_that.isLoading,_that.selectedRoomId,_that.selectedStorageUnitId,_that.lastActionMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Product> allProducts,  List<Product> selectedProducts,  List<Product> presentedProducts,  bool hasError,  bool isLoading,  int? selectedRoomId,  int? selectedStorageUnitId,  String? lastActionMessage)  $default,) {final _that = this;
switch (_that) {
case _ProductsState():
return $default(_that.allProducts,_that.selectedProducts,_that.presentedProducts,_that.hasError,_that.isLoading,_that.selectedRoomId,_that.selectedStorageUnitId,_that.lastActionMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Product> allProducts,  List<Product> selectedProducts,  List<Product> presentedProducts,  bool hasError,  bool isLoading,  int? selectedRoomId,  int? selectedStorageUnitId,  String? lastActionMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProductsState() when $default != null:
return $default(_that.allProducts,_that.selectedProducts,_that.presentedProducts,_that.hasError,_that.isLoading,_that.selectedRoomId,_that.selectedStorageUnitId,_that.lastActionMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProductsState implements ProductsState {
  const _ProductsState({required final  List<Product> allProducts, required final  List<Product> selectedProducts, required final  List<Product> presentedProducts, required this.hasError, required this.isLoading, this.selectedRoomId, this.selectedStorageUnitId, this.lastActionMessage}): _allProducts = allProducts,_selectedProducts = selectedProducts,_presentedProducts = presentedProducts;
  

 final  List<Product> _allProducts;
@override List<Product> get allProducts {
  if (_allProducts is EqualUnmodifiableListView) return _allProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allProducts);
}

 final  List<Product> _selectedProducts;
@override List<Product> get selectedProducts {
  if (_selectedProducts is EqualUnmodifiableListView) return _selectedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedProducts);
}

 final  List<Product> _presentedProducts;
@override List<Product> get presentedProducts {
  if (_presentedProducts is EqualUnmodifiableListView) return _presentedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_presentedProducts);
}

@override final  bool hasError;
@override final  bool isLoading;
@override final  int? selectedRoomId;
@override final  int? selectedStorageUnitId;
@override final  String? lastActionMessage;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsStateCopyWith<_ProductsState> get copyWith => __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsState&&const DeepCollectionEquality().equals(other._allProducts, _allProducts)&&const DeepCollectionEquality().equals(other._selectedProducts, _selectedProducts)&&const DeepCollectionEquality().equals(other._presentedProducts, _presentedProducts)&&(identical(other.hasError, hasError) || other.hasError == hasError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedRoomId, selectedRoomId) || other.selectedRoomId == selectedRoomId)&&(identical(other.selectedStorageUnitId, selectedStorageUnitId) || other.selectedStorageUnitId == selectedStorageUnitId)&&(identical(other.lastActionMessage, lastActionMessage) || other.lastActionMessage == lastActionMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allProducts),const DeepCollectionEquality().hash(_selectedProducts),const DeepCollectionEquality().hash(_presentedProducts),hasError,isLoading,selectedRoomId,selectedStorageUnitId,lastActionMessage);

@override
String toString() {
  return 'ProductsState(allProducts: $allProducts, selectedProducts: $selectedProducts, presentedProducts: $presentedProducts, hasError: $hasError, isLoading: $isLoading, selectedRoomId: $selectedRoomId, selectedStorageUnitId: $selectedStorageUnitId, lastActionMessage: $lastActionMessage)';
}



  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// @nodoc
abstract mixin class _$ProductsStateCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(_ProductsState value, $Res Function(_ProductsState) _then) = __$ProductsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Product> allProducts, List<Product> selectedProducts, List<Product> presentedProducts, bool hasError, bool isLoading, int? selectedRoomId, int? selectedStorageUnitId, String? lastActionMessage
});




}
/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(this._self, this._then);

  final _ProductsState _self;
  final $Res Function(_ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allProducts = null,Object? selectedProducts = null,Object? presentedProducts = null,Object? hasError = null,Object? isLoading = null,Object? selectedRoomId = freezed,Object? selectedStorageUnitId = freezed,Object? lastActionMessage = freezed,}) {
  return _then(_ProductsState(
allProducts: null == allProducts ? _self._allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,selectedProducts: null == selectedProducts ? _self._selectedProducts : selectedProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,presentedProducts: null == presentedProducts ? _self._presentedProducts : presentedProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,hasError: null == hasError ? _self.hasError : hasError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedRoomId: freezed == selectedRoomId ? _self.selectedRoomId : selectedRoomId // ignore: cast_nullable_to_non_nullable
as int?,selectedStorageUnitId: freezed == selectedStorageUnitId ? _self.selectedStorageUnitId : selectedStorageUnitId // ignore: cast_nullable_to_non_nullable
as int?,lastActionMessage: freezed == lastActionMessage ? _self.lastActionMessage : lastActionMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
