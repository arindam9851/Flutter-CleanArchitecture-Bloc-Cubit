// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent()';
}


}

/// @nodoc
class $CoinEventCopyWith<$Res>  {
$CoinEventCopyWith(CoinEvent _, $Res Function(CoinEvent) __);
}


/// Adds pattern-matching-related methods to [CoinEvent].
extension CoinEventPatterns on CoinEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCoins value)?  fetchCoins,TResult Function( Refresh value)?  refresh,TResult Function( Search value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCoins() when fetchCoins != null:
return fetchCoins(_that);case Refresh() when refresh != null:
return refresh(_that);case Search() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCoins value)  fetchCoins,required TResult Function( Refresh value)  refresh,required TResult Function( Search value)  search,}){
final _that = this;
switch (_that) {
case FetchCoins():
return fetchCoins(_that);case Refresh():
return refresh(_that);case Search():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCoins value)?  fetchCoins,TResult? Function( Refresh value)?  refresh,TResult? Function( Search value)?  search,}){
final _that = this;
switch (_that) {
case FetchCoins() when fetchCoins != null:
return fetchCoins(_that);case Refresh() when refresh != null:
return refresh(_that);case Search() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchCoins,TResult Function()?  refresh,TResult Function( String query)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCoins() when fetchCoins != null:
return fetchCoins();case Refresh() when refresh != null:
return refresh();case Search() when search != null:
return search(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchCoins,required TResult Function()  refresh,required TResult Function( String query)  search,}) {final _that = this;
switch (_that) {
case FetchCoins():
return fetchCoins();case Refresh():
return refresh();case Search():
return search(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchCoins,TResult? Function()?  refresh,TResult? Function( String query)?  search,}) {final _that = this;
switch (_that) {
case FetchCoins() when fetchCoins != null:
return fetchCoins();case Refresh() when refresh != null:
return refresh();case Search() when search != null:
return search(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class FetchCoins implements CoinEvent {
  const FetchCoins();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCoins);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent.fetchCoins()';
}


}




/// @nodoc


class Refresh implements CoinEvent {
  const Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinEvent.refresh()';
}


}




/// @nodoc


class Search implements CoinEvent {
  const Search(this.query);
  

 final  String query;

/// Create a copy of CoinEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCopyWith<Search> get copyWith => _$SearchCopyWithImpl<Search>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Search&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'CoinEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchCopyWith<$Res> implements $CoinEventCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) _then) = _$SearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._self, this._then);

  final Search _self;
  final $Res Function(Search) _then;

/// Create a copy of CoinEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(Search(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
