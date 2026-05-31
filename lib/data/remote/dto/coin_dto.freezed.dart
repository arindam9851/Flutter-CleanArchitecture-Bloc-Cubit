// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoinDto {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'symbol') String get symbol;@JsonKey(name: 'rank') int get rank;@JsonKey(name: 'is_new') bool get isNew;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'type') String get type;
/// Create a copy of CoinDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinDtoCopyWith<CoinDto> get copyWith => _$CoinDtoCopyWithImpl<CoinDto>(this as CoinDto, _$identity);

  /// Serializes this CoinDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,isNew,isActive,type);

@override
String toString() {
  return 'CoinDto(id: $id, name: $name, symbol: $symbol, rank: $rank, isNew: $isNew, isActive: $isActive, type: $type)';
}


}

/// @nodoc
abstract mixin class $CoinDtoCopyWith<$Res>  {
  factory $CoinDtoCopyWith(CoinDto value, $Res Function(CoinDto) _then) = _$CoinDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'symbol') String symbol,@JsonKey(name: 'rank') int rank,@JsonKey(name: 'is_new') bool isNew,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class _$CoinDtoCopyWithImpl<$Res>
    implements $CoinDtoCopyWith<$Res> {
  _$CoinDtoCopyWithImpl(this._self, this._then);

  final CoinDto _self;
  final $Res Function(CoinDto) _then;

/// Create a copy of CoinDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? isNew = null,Object? isActive = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CoinDto].
extension CoinDtoPatterns on CoinDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoinDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoinDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoinDto value)  $default,){
final _that = this;
switch (_that) {
case _CoinDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoinDto value)?  $default,){
final _that = this;
switch (_that) {
case _CoinDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'rank')  int rank, @JsonKey(name: 'is_new')  bool isNew, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'type')  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoinDto() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isNew,_that.isActive,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'rank')  int rank, @JsonKey(name: 'is_new')  bool isNew, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'type')  String type)  $default,) {final _that = this;
switch (_that) {
case _CoinDto():
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isNew,_that.isActive,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'symbol')  String symbol, @JsonKey(name: 'rank')  int rank, @JsonKey(name: 'is_new')  bool isNew, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'type')  String type)?  $default,) {final _that = this;
switch (_that) {
case _CoinDto() when $default != null:
return $default(_that.id,_that.name,_that.symbol,_that.rank,_that.isNew,_that.isActive,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoinDto implements CoinDto {
  const _CoinDto({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'symbol') required this.symbol, @JsonKey(name: 'rank') required this.rank, @JsonKey(name: 'is_new') this.isNew = false, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'type') this.type = ''});
  factory _CoinDto.fromJson(Map<String, dynamic> json) => _$CoinDtoFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'symbol') final  String symbol;
@override@JsonKey(name: 'rank') final  int rank;
@override@JsonKey(name: 'is_new') final  bool isNew;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'type') final  String type;

/// Create a copy of CoinDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoinDtoCopyWith<_CoinDto> get copyWith => __$CoinDtoCopyWithImpl<_CoinDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoinDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoinDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.isNew, isNew) || other.isNew == isNew)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,symbol,rank,isNew,isActive,type);

@override
String toString() {
  return 'CoinDto(id: $id, name: $name, symbol: $symbol, rank: $rank, isNew: $isNew, isActive: $isActive, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CoinDtoCopyWith<$Res> implements $CoinDtoCopyWith<$Res> {
  factory _$CoinDtoCopyWith(_CoinDto value, $Res Function(_CoinDto) _then) = __$CoinDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String name,@JsonKey(name: 'symbol') String symbol,@JsonKey(name: 'rank') int rank,@JsonKey(name: 'is_new') bool isNew,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'type') String type
});




}
/// @nodoc
class __$CoinDtoCopyWithImpl<$Res>
    implements _$CoinDtoCopyWith<$Res> {
  __$CoinDtoCopyWithImpl(this._self, this._then);

  final _CoinDto _self;
  final $Res Function(_CoinDto) _then;

/// Create a copy of CoinDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? symbol = null,Object? rank = null,Object? isNew = null,Object? isActive = null,Object? type = null,}) {
  return _then(_CoinDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,isNew: null == isNew ? _self.isNew : isNew // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
