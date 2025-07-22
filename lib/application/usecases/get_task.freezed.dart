// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTaskParams {

 int get id;
/// Create a copy of GetTaskParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTaskParamsCopyWith<GetTaskParams> get copyWith => _$GetTaskParamsCopyWithImpl<GetTaskParams>(this as GetTaskParams, _$identity);

  /// Serializes this GetTaskParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTaskParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetTaskParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTaskParamsCopyWith<$Res>  {
  factory $GetTaskParamsCopyWith(GetTaskParams value, $Res Function(GetTaskParams) _then) = _$GetTaskParamsCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$GetTaskParamsCopyWithImpl<$Res>
    implements $GetTaskParamsCopyWith<$Res> {
  _$GetTaskParamsCopyWithImpl(this._self, this._then);

  final GetTaskParams _self;
  final $Res Function(GetTaskParams) _then;

/// Create a copy of GetTaskParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTaskParams].
extension GetTaskParamsPatterns on GetTaskParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTaskParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTaskParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTaskParams value)  $default,){
final _that = this;
switch (_that) {
case _GetTaskParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTaskParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetTaskParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTaskParams() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _GetTaskParams():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _GetTaskParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetTaskParams implements GetTaskParams {
  const _GetTaskParams({required this.id});
  factory _GetTaskParams.fromJson(Map<String, dynamic> json) => _$GetTaskParamsFromJson(json);

@override final  int id;

/// Create a copy of GetTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTaskParamsCopyWith<_GetTaskParams> get copyWith => __$GetTaskParamsCopyWithImpl<_GetTaskParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTaskParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTaskParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'GetTaskParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTaskParamsCopyWith<$Res> implements $GetTaskParamsCopyWith<$Res> {
  factory _$GetTaskParamsCopyWith(_GetTaskParams value, $Res Function(_GetTaskParams) _then) = __$GetTaskParamsCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$GetTaskParamsCopyWithImpl<$Res>
    implements _$GetTaskParamsCopyWith<$Res> {
  __$GetTaskParamsCopyWithImpl(this._self, this._then);

  final _GetTaskParams _self;
  final $Res Function(_GetTaskParams) _then;

/// Create a copy of GetTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_GetTaskParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
