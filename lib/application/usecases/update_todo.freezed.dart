// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateTodoParams _$UpdateTodoParamsFromJson(Map<String, dynamic> json) {
  return _UpdateTodoParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateTodoParams {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this UpdateTodoParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTodoParamsCopyWith<UpdateTodoParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTodoParamsCopyWith<$Res> {
  factory $UpdateTodoParamsCopyWith(
    UpdateTodoParams value,
    $Res Function(UpdateTodoParams) then,
  ) = _$UpdateTodoParamsCopyWithImpl<$Res, UpdateTodoParams>;
  @useResult
  $Res call({String? title, String? description, bool? isCompleted});
}

/// @nodoc
class _$UpdateTodoParamsCopyWithImpl<$Res, $Val extends UpdateTodoParams>
    implements $UpdateTodoParamsCopyWith<$Res> {
  _$UpdateTodoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            isCompleted: freezed == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateTodoParamsImplCopyWith<$Res>
    implements $UpdateTodoParamsCopyWith<$Res> {
  factory _$$UpdateTodoParamsImplCopyWith(
    _$UpdateTodoParamsImpl value,
    $Res Function(_$UpdateTodoParamsImpl) then,
  ) = __$$UpdateTodoParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, bool? isCompleted});
}

/// @nodoc
class __$$UpdateTodoParamsImplCopyWithImpl<$Res>
    extends _$UpdateTodoParamsCopyWithImpl<$Res, _$UpdateTodoParamsImpl>
    implements _$$UpdateTodoParamsImplCopyWith<$Res> {
  __$$UpdateTodoParamsImplCopyWithImpl(
    _$UpdateTodoParamsImpl _value,
    $Res Function(_$UpdateTodoParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(
      _$UpdateTodoParamsImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        isCompleted: freezed == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTodoParamsImpl implements _UpdateTodoParams {
  const _$UpdateTodoParamsImpl({
    this.title,
    this.description,
    this.isCompleted,
  });

  factory _$UpdateTodoParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTodoParamsImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'UpdateTodoParams(title: $title, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, isCompleted);

  /// Create a copy of UpdateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoParamsImplCopyWith<_$UpdateTodoParamsImpl> get copyWith =>
      __$$UpdateTodoParamsImplCopyWithImpl<_$UpdateTodoParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTodoParamsImplToJson(this);
  }
}

abstract class _UpdateTodoParams implements UpdateTodoParams {
  const factory _UpdateTodoParams({
    final String? title,
    final String? description,
    final bool? isCompleted,
  }) = _$UpdateTodoParamsImpl;

  factory _UpdateTodoParams.fromJson(Map<String, dynamic> json) =
      _$UpdateTodoParamsImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool? get isCompleted;

  /// Create a copy of UpdateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTodoParamsImplCopyWith<_$UpdateTodoParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
