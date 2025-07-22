// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateTaskParams {

 int get id; String? get title; String? get description; bool? get isCompleted;
/// Create a copy of UpdateTaskParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTaskParamsCopyWith<UpdateTaskParams> get copyWith => _$UpdateTaskParamsCopyWithImpl<UpdateTaskParams>(this as UpdateTaskParams, _$identity);

  /// Serializes this UpdateTaskParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskParams&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,isCompleted);

@override
String toString() {
  return 'UpdateTaskParams(id: $id, title: $title, description: $description, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $UpdateTaskParamsCopyWith<$Res>  {
  factory $UpdateTaskParamsCopyWith(UpdateTaskParams value, $Res Function(UpdateTaskParams) _then) = _$UpdateTaskParamsCopyWithImpl;
@useResult
$Res call({
 int id, String? title, String? description, bool? isCompleted
});




}
/// @nodoc
class _$UpdateTaskParamsCopyWithImpl<$Res>
    implements $UpdateTaskParamsCopyWith<$Res> {
  _$UpdateTaskParamsCopyWithImpl(this._self, this._then);

  final UpdateTaskParams _self;
  final $Res Function(UpdateTaskParams) _then;

/// Create a copy of UpdateTaskParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? isCompleted = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateTaskParams].
extension UpdateTaskParamsPatterns on UpdateTaskParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateTaskParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateTaskParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateTaskParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateTaskParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateTaskParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateTaskParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? title,  String? description,  bool? isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateTaskParams() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? title,  String? description,  bool? isCompleted)  $default,) {final _that = this;
switch (_that) {
case _UpdateTaskParams():
return $default(_that.id,_that.title,_that.description,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? title,  String? description,  bool? isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _UpdateTaskParams() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateTaskParams implements UpdateTaskParams {
  const _UpdateTaskParams({required this.id, this.title, this.description, this.isCompleted});
  factory _UpdateTaskParams.fromJson(Map<String, dynamic> json) => _$UpdateTaskParamsFromJson(json);

@override final  int id;
@override final  String? title;
@override final  String? description;
@override final  bool? isCompleted;

/// Create a copy of UpdateTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTaskParamsCopyWith<_UpdateTaskParams> get copyWith => __$UpdateTaskParamsCopyWithImpl<_UpdateTaskParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateTaskParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTaskParams&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,isCompleted);

@override
String toString() {
  return 'UpdateTaskParams(id: $id, title: $title, description: $description, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$UpdateTaskParamsCopyWith<$Res> implements $UpdateTaskParamsCopyWith<$Res> {
  factory _$UpdateTaskParamsCopyWith(_UpdateTaskParams value, $Res Function(_UpdateTaskParams) _then) = __$UpdateTaskParamsCopyWithImpl;
@override @useResult
$Res call({
 int id, String? title, String? description, bool? isCompleted
});




}
/// @nodoc
class __$UpdateTaskParamsCopyWithImpl<$Res>
    implements _$UpdateTaskParamsCopyWith<$Res> {
  __$UpdateTaskParamsCopyWithImpl(this._self, this._then);

  final _UpdateTaskParams _self;
  final $Res Function(_UpdateTaskParams) _then;

/// Create a copy of UpdateTaskParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? isCompleted = freezed,}) {
  return _then(_UpdateTaskParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
