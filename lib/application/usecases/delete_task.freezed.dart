// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteTaskParams {

 int get id;
/// Create a copy of DeleteTaskParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTaskParamsCopyWith<DeleteTaskParams> get copyWith => _$DeleteTaskParamsCopyWithImpl<DeleteTaskParams>(this as DeleteTaskParams, _$identity);

  /// Serializes this DeleteTaskParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTaskParams(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteTaskParamsCopyWith<$Res>  {
  factory $DeleteTaskParamsCopyWith(DeleteTaskParams value, $Res Function(DeleteTaskParams) _then) = _$DeleteTaskParamsCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$DeleteTaskParamsCopyWithImpl<$Res>
    implements $DeleteTaskParamsCopyWith<$Res> {
  _$DeleteTaskParamsCopyWithImpl(this._self, this._then);

  final DeleteTaskParams _self;
  final $Res Function(DeleteTaskParams) _then;

/// Create a copy of DeleteTaskParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteTaskParams].
extension DeleteTaskParamsPatterns on DeleteTaskParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteTaskParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteTaskParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteTaskParams value)  $default,){
final _that = this;
switch (_that) {
case _DeleteTaskParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteTaskParams value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteTaskParams() when $default != null:
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
case _DeleteTaskParams() when $default != null:
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
case _DeleteTaskParams():
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
case _DeleteTaskParams() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteTaskParams implements DeleteTaskParams {
  const _DeleteTaskParams({required this.id});
  factory _DeleteTaskParams.fromJson(Map<String, dynamic> json) => _$DeleteTaskParamsFromJson(json);

@override final  int id;

/// Create a copy of DeleteTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTaskParamsCopyWith<_DeleteTaskParams> get copyWith => __$DeleteTaskParamsCopyWithImpl<_DeleteTaskParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteTaskParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTaskParams&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DeleteTaskParams(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTaskParamsCopyWith<$Res> implements $DeleteTaskParamsCopyWith<$Res> {
  factory _$DeleteTaskParamsCopyWith(_DeleteTaskParams value, $Res Function(_DeleteTaskParams) _then) = __$DeleteTaskParamsCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteTaskParamsCopyWithImpl<$Res>
    implements _$DeleteTaskParamsCopyWith<$Res> {
  __$DeleteTaskParamsCopyWithImpl(this._self, this._then);

  final _DeleteTaskParams _self;
  final $Res Function(_DeleteTaskParams) _then;

/// Create a copy of DeleteTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTaskParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
