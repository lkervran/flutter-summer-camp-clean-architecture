// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cabin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cabin {

 String get description; String get id; String get name;
/// Create a copy of Cabin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CabinCopyWith<Cabin> get copyWith => _$CabinCopyWithImpl<Cabin>(this as Cabin, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cabin&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,description,id,name);

@override
String toString() {
  return 'Cabin(description: $description, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CabinCopyWith<$Res>  {
  factory $CabinCopyWith(Cabin value, $Res Function(Cabin) _then) = _$CabinCopyWithImpl;
@useResult
$Res call({
 String description, String id, String name
});




}
/// @nodoc
class _$CabinCopyWithImpl<$Res>
    implements $CabinCopyWith<$Res> {
  _$CabinCopyWithImpl(this._self, this._then);

  final Cabin _self;
  final $Res Function(Cabin) _then;

/// Create a copy of Cabin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Cabin].
extension CabinPatterns on Cabin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cabin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cabin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cabin value)  $default,){
final _that = this;
switch (_that) {
case _Cabin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cabin value)?  $default,){
final _that = this;
switch (_that) {
case _Cabin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cabin() when $default != null:
return $default(_that.description,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Cabin():
return $default(_that.description,_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Cabin() when $default != null:
return $default(_that.description,_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _Cabin implements Cabin {
  const _Cabin({required this.description, required this.id, required this.name});
  

@override final  String description;
@override final  String id;
@override final  String name;

/// Create a copy of Cabin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CabinCopyWith<_Cabin> get copyWith => __$CabinCopyWithImpl<_Cabin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cabin&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,description,id,name);

@override
String toString() {
  return 'Cabin(description: $description, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CabinCopyWith<$Res> implements $CabinCopyWith<$Res> {
  factory _$CabinCopyWith(_Cabin value, $Res Function(_Cabin) _then) = __$CabinCopyWithImpl;
@override @useResult
$Res call({
 String description, String id, String name
});




}
/// @nodoc
class __$CabinCopyWithImpl<$Res>
    implements _$CabinCopyWith<$Res> {
  __$CabinCopyWithImpl(this._self, this._then);

  final _Cabin _self;
  final $Res Function(_Cabin) _then;

/// Create a copy of Cabin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? id = null,Object? name = null,}) {
  return _then(_Cabin(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
