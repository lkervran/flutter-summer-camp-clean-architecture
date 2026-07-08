// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cabin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CabinDto {

 String get description; String get id; String get name;
/// Create a copy of CabinDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CabinDtoCopyWith<CabinDto> get copyWith => _$CabinDtoCopyWithImpl<CabinDto>(this as CabinDto, _$identity);

  /// Serializes this CabinDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CabinDto&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,id,name);

@override
String toString() {
  return 'CabinDto(description: $description, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CabinDtoCopyWith<$Res>  {
  factory $CabinDtoCopyWith(CabinDto value, $Res Function(CabinDto) _then) = _$CabinDtoCopyWithImpl;
@useResult
$Res call({
 String description, String id, String name
});




}
/// @nodoc
class _$CabinDtoCopyWithImpl<$Res>
    implements $CabinDtoCopyWith<$Res> {
  _$CabinDtoCopyWithImpl(this._self, this._then);

  final CabinDto _self;
  final $Res Function(CabinDto) _then;

/// Create a copy of CabinDto
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


/// Adds pattern-matching-related methods to [CabinDto].
extension CabinDtoPatterns on CabinDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CabinDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CabinDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CabinDto value)  $default,){
final _that = this;
switch (_that) {
case _CabinDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CabinDto value)?  $default,){
final _that = this;
switch (_that) {
case _CabinDto() when $default != null:
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
case _CabinDto() when $default != null:
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
case _CabinDto():
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
case _CabinDto() when $default != null:
return $default(_that.description,_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CabinDto extends CabinDto {
  const _CabinDto({required this.description, required this.id, required this.name}): super._();
  factory _CabinDto.fromJson(Map<String, dynamic> json) => _$CabinDtoFromJson(json);

@override final  String description;
@override final  String id;
@override final  String name;

/// Create a copy of CabinDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CabinDtoCopyWith<_CabinDto> get copyWith => __$CabinDtoCopyWithImpl<_CabinDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CabinDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CabinDto&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,id,name);

@override
String toString() {
  return 'CabinDto(description: $description, id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CabinDtoCopyWith<$Res> implements $CabinDtoCopyWith<$Res> {
  factory _$CabinDtoCopyWith(_CabinDto value, $Res Function(_CabinDto) _then) = __$CabinDtoCopyWithImpl;
@override @useResult
$Res call({
 String description, String id, String name
});




}
/// @nodoc
class __$CabinDtoCopyWithImpl<$Res>
    implements _$CabinDtoCopyWith<$Res> {
  __$CabinDtoCopyWithImpl(this._self, this._then);

  final _CabinDto _self;
  final $Res Function(_CabinDto) _then;

/// Create a copy of CabinDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? id = null,Object? name = null,}) {
  return _then(_CabinDto(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
