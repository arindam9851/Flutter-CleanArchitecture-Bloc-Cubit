// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinDomainModel {

 String get id; String get name; String get symbol; int get rank; bool get isActive; String get type;
/// Create a copy of CoinDomainModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinDomainModelCopyWith<CoinDomainModel> get copyWith => _$CoinDomainModelCopyWithImpl<CoinDomainModel>(this as CoinDomainModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinDomainModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,isActive,type);

@override
String toString() {
  return 'CoinDomainModel(id: $id, name: $name, symbol: $symbol, rank: $rank, isActive: $isActive, type: $type)';
}


}

/// @nodoc
abstract mixin class $CoinDomainModelCopyWith<$Res>  {
  factory $CoinDomainModelCopyWith(CoinDomainModel value, $Res Function(CoinDomainModel) _then) = _$CoinDomainModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String symbol, int rank, bool isActive, String type
});




}
/// @nodoc
class _$CoinDomainModelCopyWithImpl<$Res>
    implements $CoinDomainModelCopyWith<$Res> {
  _$CoinDomainModelCopyWithImpl(this._self, this._then);

  final CoinDomainModel _self;
  final $Res Function(CoinDomainModel) _then;

/// Create a copy of CoinDomainModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? isActive = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CoinDomainModel].
extension CoinDomainModelPatterns on CoinDomainModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoinDomainModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoinDomainModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoinDomainModel value)  $default,){
final _that = this;
switch (_that) {
case _CoinDomainModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoinDomainModel value)?  $default,){
final _that = this;
switch (_that) {
case _CoinDomainModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  int rank,  bool isActive,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoinDomainModel() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isActive,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String symbol,  int rank,  bool isActive,  String type)  $default,) {final _that = this;
switch (_that) {
case _CoinDomainModel():
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isActive,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String symbol,  int rank,  bool isActive,  String type)?  $default,) {final _that = this;
switch (_that) {
case _CoinDomainModel() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isActive,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _CoinDomainModel implements CoinDomainModel {
  const _CoinDomainModel({required this.id, required this.name, required this.symbol, required this.rank, required this.isActive, required this.type});
  

@override final  String id;
@override final  String name;
@override final  String symbol;
@override final  int rank;
@override final  bool isActive;
@override final  String type;

/// Create a copy of CoinDomainModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinDomainModelCopyWith<_CoinDomainModel> get copyWith => __$CoinDomainModelCopyWithImpl<_CoinDomainModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinDomainModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,isActive,type);

@override
String toString() {
  return 'CoinDomainModel(id: $id, name: $name, symbol: $symbol, rank: $rank, isActive: $isActive, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CoinDomainModelCopyWith<$Res> implements $CoinDomainModelCopyWith<$Res> {
  factory _$CoinDomainModelCopyWith(_CoinDomainModel value, $Res Function(_CoinDomainModel) _then) = __$CoinDomainModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String symbol, int rank, bool isActive, String type
});




}
/// @nodoc
class __$CoinDomainModelCopyWithImpl<$Res>
    implements _$CoinDomainModelCopyWith<$Res> {
  __$CoinDomainModelCopyWithImpl(this._self, this._then);

  final _CoinDomainModel _self;
  final $Res Function(_CoinDomainModel) _then;

/// Create a copy of CoinDomainModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? isActive = null,Object? type = null,}) {
  return _then(_CoinDomainModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
