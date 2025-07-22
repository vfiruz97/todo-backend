// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTaskParams {

 String get title; String get description;
/// Create a copy of CreateTaskParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTaskParamsCopyWith<CreateTaskParams> get copyWith => _$CreateTaskParamsCopyWithImpl<CreateTaskParams>(this as CreateTaskParams, _$identity);

  /// Serializes this CreateTaskParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTaskParams&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreateTaskParams(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreateTaskParamsCopyWith<$Res>  {
  factory $CreateTaskParamsCopyWith(CreateTaskParams value, $Res Function(CreateTaskParams) _then) = _$CreateTaskParamsCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class _$CreateTaskParamsCopyWithImpl<$Res>
    implements $CreateTaskParamsCopyWith<$Res> {
  _$CreateTaskParamsCopyWithImpl(this._self, this._then);

  final CreateTaskParams _self;
  final $Res Function(CreateTaskParams) _then;

/// Create a copy of CreateTaskParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTaskParams].
extension CreateTaskParamsPatterns on CreateTaskParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTaskParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTaskParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTaskParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateTaskParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTaskParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTaskParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTaskParams() when $default != null:
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _CreateTaskParams():
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _CreateTaskParams() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTaskParams implements CreateTaskParams {
  const _CreateTaskParams({required this.title, required this.description});
  factory _CreateTaskParams.fromJson(Map<String, dynamic> json) => _$CreateTaskParamsFromJson(json);

@override final  String title;
@override final  String description;

/// Create a copy of CreateTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTaskParamsCopyWith<_CreateTaskParams> get copyWith => __$CreateTaskParamsCopyWithImpl<_CreateTaskParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTaskParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTaskParams&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreateTaskParams(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateTaskParamsCopyWith<$Res> implements $CreateTaskParamsCopyWith<$Res> {
  factory _$CreateTaskParamsCopyWith(_CreateTaskParams value, $Res Function(_CreateTaskParams) _then) = __$CreateTaskParamsCopyWithImpl;
@override @useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$CreateTaskParamsCopyWithImpl<$Res>
    implements _$CreateTaskParamsCopyWith<$Res> {
  __$CreateTaskParamsCopyWithImpl(this._self, this._then);

  final _CreateTaskParams _self;
  final $Res Function(_CreateTaskParams) _then;

/// Create a copy of CreateTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_CreateTaskParams(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
