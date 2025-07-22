// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateTodoParams _$CreateTodoParamsFromJson(Map<String, dynamic> json) {
  return _CreateTodoParams.fromJson(json);
}

/// @nodoc
mixin _$CreateTodoParams {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this CreateTodoParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTodoParamsCopyWith<CreateTodoParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoParamsCopyWith<$Res> {
  factory $CreateTodoParamsCopyWith(
    CreateTodoParams value,
    $Res Function(CreateTodoParams) then,
  ) = _$CreateTodoParamsCopyWithImpl<$Res, CreateTodoParams>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$CreateTodoParamsCopyWithImpl<$Res, $Val extends CreateTodoParams>
    implements $CreateTodoParamsCopyWith<$Res> {
  _$CreateTodoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? description = null}) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateTodoParamsImplCopyWith<$Res>
    implements $CreateTodoParamsCopyWith<$Res> {
  factory _$$CreateTodoParamsImplCopyWith(
    _$CreateTodoParamsImpl value,
    $Res Function(_$CreateTodoParamsImpl) then,
  ) = __$$CreateTodoParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$CreateTodoParamsImplCopyWithImpl<$Res>
    extends _$CreateTodoParamsCopyWithImpl<$Res, _$CreateTodoParamsImpl>
    implements _$$CreateTodoParamsImplCopyWith<$Res> {
  __$$CreateTodoParamsImplCopyWithImpl(
    _$CreateTodoParamsImpl _value,
    $Res Function(_$CreateTodoParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? description = null}) {
    return _then(
      _$CreateTodoParamsImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTodoParamsImpl implements _CreateTodoParams {
  const _$CreateTodoParamsImpl({
    required this.title,
    required this.description,
  });

  factory _$CreateTodoParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTodoParamsImplFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'CreateTodoParams(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTodoParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of CreateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTodoParamsImplCopyWith<_$CreateTodoParamsImpl> get copyWith =>
      __$$CreateTodoParamsImplCopyWithImpl<_$CreateTodoParamsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTodoParamsImplToJson(this);
  }
}

abstract class _CreateTodoParams implements CreateTodoParams {
  const factory _CreateTodoParams({
    required final String title,
    required final String description,
  }) = _$CreateTodoParamsImpl;

  factory _CreateTodoParams.fromJson(Map<String, dynamic> json) =
      _$CreateTodoParamsImpl.fromJson;

  @override
  String get title;
  @override
  String get description;

  /// Create a copy of CreateTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTodoParamsImplCopyWith<_$CreateTodoParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
