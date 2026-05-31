// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState()';
}


}

/// @nodoc
class $CoinStateCopyWith<$Res>  {
$CoinStateCopyWith(CoinState _, $Res Function(CoinState) __);
}


/// Adds pattern-matching-related methods to [CoinState].
extension CoinStatePatterns on CoinState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CoinInitial value)?  initial,TResult Function( CoinLoading value)?  loading,TResult Function( CoinLoaded value)?  loaded,TResult Function( CoinError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial(_that);case CoinLoading() when loading != null:
return loading(_that);case CoinLoaded() when loaded != null:
return loaded(_that);case CoinError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CoinInitial value)  initial,required TResult Function( CoinLoading value)  loading,required TResult Function( CoinLoaded value)  loaded,required TResult Function( CoinError value)  error,}){
final _that = this;
switch (_that) {
case CoinInitial():
return initial(_that);case CoinLoading():
return loading(_that);case CoinLoaded():
return loaded(_that);case CoinError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CoinInitial value)?  initial,TResult? Function( CoinLoading value)?  loading,TResult? Function( CoinLoaded value)?  loaded,TResult? Function( CoinError value)?  error,}){
final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial(_that);case CoinLoading() when loading != null:
return loading(_that);case CoinLoaded() when loaded != null:
return loaded(_that);case CoinError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CoinDomainModel> coins)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial();case CoinLoading() when loading != null:
return loading();case CoinLoaded() when loaded != null:
return loaded(_that.coins);case CoinError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CoinDomainModel> coins)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CoinInitial():
return initial();case CoinLoading():
return loading();case CoinLoaded():
return loaded(_that.coins);case CoinError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CoinDomainModel> coins)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CoinInitial() when initial != null:
return initial();case CoinLoading() when loading != null:
return loading();case CoinLoaded() when loaded != null:
return loaded(_that.coins);case CoinError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CoinInitial implements CoinState {
  const CoinInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState.initial()';
}


}




/// @nodoc


class CoinLoading implements CoinState {
  const CoinLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinState.loading()';
}


}




/// @nodoc


class CoinLoaded implements CoinState {
  const CoinLoaded(final  List<CoinDomainModel> coins): _coins = coins;
  

 final  List<CoinDomainModel> _coins;
 List<CoinDomainModel> get coins {
  if (_coins is EqualUnmodifiableListView) return _coins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coins);
}


/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinLoadedCopyWith<CoinLoaded> get copyWith => _$CoinLoadedCopyWithImpl<CoinLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinLoaded&&const DeepCollectionEquality().equals(other._coins, _coins));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_coins));

@override
String toString() {
  return 'CoinState.loaded(coins: $coins)';
}


}

/// @nodoc
abstract mixin class $CoinLoadedCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory $CoinLoadedCopyWith(CoinLoaded value, $Res Function(CoinLoaded) _then) = _$CoinLoadedCopyWithImpl;
@useResult
$Res call({
 List<CoinDomainModel> coins
});




}
/// @nodoc
class _$CoinLoadedCopyWithImpl<$Res>
    implements $CoinLoadedCopyWith<$Res> {
  _$CoinLoadedCopyWithImpl(this._self, this._then);

  final CoinLoaded _self;
  final $Res Function(CoinLoaded) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? coins = null,}) {
  return _then(CoinLoaded(
null == coins ? _self._coins : coins // ignore: cast_nullable_to_non_nullable
as List<CoinDomainModel>,
  ));
}


}

/// @nodoc


class CoinError implements CoinState {
  const CoinError(this.message);
  

 final  String message;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinErrorCopyWith<CoinError> get copyWith => _$CoinErrorCopyWithImpl<CoinError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CoinState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CoinErrorCopyWith<$Res> implements $CoinStateCopyWith<$Res> {
  factory $CoinErrorCopyWith(CoinError value, $Res Function(CoinError) _then) = _$CoinErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CoinErrorCopyWithImpl<$Res>
    implements $CoinErrorCopyWith<$Res> {
  _$CoinErrorCopyWithImpl(this._self, this._then);

  final CoinError _self;
  final $Res Function(CoinError) _then;

/// Create a copy of CoinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CoinError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
