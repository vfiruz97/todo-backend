// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GetTodoParams _$GetTodoParamsFromJson(Map<String, dynamic> json) {
  return _GetTodoParams.fromJson(json);
}

/// @nodoc
mixin _$GetTodoParams {
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this GetTodoParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTodoParamsCopyWith<GetTodoParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTodoParamsCopyWith<$Res> {
  factory $GetTodoParamsCopyWith(
    GetTodoParams value,
    $Res Function(GetTodoParams) then,
  ) = _$GetTodoParamsCopyWithImpl<$Res, GetTodoParams>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$GetTodoParamsCopyWithImpl<$Res, $Val extends GetTodoParams>
    implements $GetTodoParamsCopyWith<$Res> {
  _$GetTodoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetTodoParamsImplCopyWith<$Res>
    implements $GetTodoParamsCopyWith<$Res> {
  factory _$$GetTodoParamsImplCopyWith(
    _$GetTodoParamsImpl value,
    $Res Function(_$GetTodoParamsImpl) then,
  ) = __$$GetTodoParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$GetTodoParamsImplCopyWithImpl<$Res>
    extends _$GetTodoParamsCopyWithImpl<$Res, _$GetTodoParamsImpl>
    implements _$$GetTodoParamsImplCopyWith<$Res> {
  __$$GetTodoParamsImplCopyWithImpl(
    _$GetTodoParamsImpl _value,
    $Res Function(_$GetTodoParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed}) {
    return _then(
      _$GetTodoParamsImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTodoParamsImpl implements _GetTodoParams {
  const _$GetTodoParamsImpl({required this.id});

  factory _$GetTodoParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTodoParamsImplFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'GetTodoParams(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodoParamsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodoParamsImplCopyWith<_$GetTodoParamsImpl> get copyWith =>
      __$$GetTodoParamsImplCopyWithImpl<_$GetTodoParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTodoParamsImplToJson(this);
  }
}

abstract class _GetTodoParams implements GetTodoParams {
  const factory _GetTodoParams({required final String? id}) =
      _$GetTodoParamsImpl;

  factory _GetTodoParams.fromJson(Map<String, dynamic> json) =
      _$GetTodoParamsImpl.fromJson;

  @override
  String? get id;

  /// Create a copy of GetTodoParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTodoParamsImplCopyWith<_$GetTodoParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
