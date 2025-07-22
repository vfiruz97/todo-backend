// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Failure _$FailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'database':
      return DatabaseFailure.fromJson(json);
    case 'validation':
      return ValidationFailure.fromJson(json);
    case 'notFound':
      return NotFoundFailure.fromJson(json);
    case 'server':
      return ServerFailure.fromJson(json);
    case 'network':
      return NetworkFailure.fromJson(json);
    case 'permission':
      return PermissionFailure.fromJson(json);
    case 'unexpected':
      return UnexpectedFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'Failure',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DatabaseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DatabaseFailureImplCopyWith(
    _$DatabaseFailureImpl value,
    $Res Function(_$DatabaseFailureImpl) then,
  ) = __$$DatabaseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$DatabaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseFailureImpl>
    implements _$$DatabaseFailureImplCopyWith<$Res> {
  __$$DatabaseFailureImplCopyWithImpl(
    _$DatabaseFailureImpl _value,
    $Res Function(_$DatabaseFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$DatabaseFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DatabaseFailureImpl implements DatabaseFailure {
  const _$DatabaseFailureImpl(
    this.message, {
    this.code = 500,
    final String? $type,
  }) : $type = $type ?? 'database';

  factory _$DatabaseFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatabaseFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.database(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      __$$DatabaseFailureImplCopyWithImpl<_$DatabaseFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return database(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return database?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DatabaseFailureImplToJson(this);
  }
}

abstract class DatabaseFailure implements Failure {
  const factory DatabaseFailure(final String message, {final int code}) =
      _$DatabaseFailureImpl;

  factory DatabaseFailure.fromJson(Map<String, dynamic> json) =
      _$DatabaseFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ValidationFailureImplCopyWith(
    _$ValidationFailureImpl value,
    $Res Function(_$ValidationFailureImpl) then,
  ) = __$$ValidationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ValidationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ValidationFailureImpl>
    implements _$$ValidationFailureImplCopyWith<$Res> {
  __$$ValidationFailureImplCopyWithImpl(
    _$ValidationFailureImpl _value,
    $Res Function(_$ValidationFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$ValidationFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationFailureImpl implements ValidationFailure {
  const _$ValidationFailureImpl(
    this.message, {
    this.code = 400,
    final String? $type,
  }) : $type = $type ?? 'validation';

  factory _$ValidationFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.validation(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      __$$ValidationFailureImplCopyWithImpl<_$ValidationFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return validation(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return validation?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationFailureImplToJson(this);
  }
}

abstract class ValidationFailure implements Failure {
  const factory ValidationFailure(final String message, {final int code}) =
      _$ValidationFailureImpl;

  factory ValidationFailure.fromJson(Map<String, dynamic> json) =
      _$ValidationFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationFailureImplCopyWith<_$ValidationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(
    _$NotFoundFailureImpl value,
    $Res Function(_$NotFoundFailureImpl) then,
  ) = __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
    _$NotFoundFailureImpl _value,
    $Res Function(_$NotFoundFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$NotFoundFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotFoundFailureImpl implements NotFoundFailure {
  const _$NotFoundFailureImpl(
    this.message, {
    this.code = 404,
    final String? $type,
  }) : $type = $type ?? 'notFound';

  factory _$NotFoundFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFoundFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.notFound(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return notFound(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return notFound?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundFailureImplToJson(this);
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure(final String message, {final int code}) =
      _$NotFoundFailureImpl;

  factory NotFoundFailure.fromJson(Map<String, dynamic> json) =
      _$NotFoundFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
    _$ServerFailureImpl value,
    $Res Function(_$ServerFailureImpl) then,
  ) = __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
    _$ServerFailureImpl _value,
    $Res Function(_$ServerFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$ServerFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl(
    this.message, {
    this.code = 500,
    final String? $type,
  }) : $type = $type ?? 'server';

  factory _$ServerFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.server(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return server?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFailureImplToJson(this);
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(final String message, {final int code}) =
      _$ServerFailureImpl;

  factory ServerFailure.fromJson(Map<String, dynamic> json) =
      _$ServerFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(
    _$NetworkFailureImpl value,
    $Res Function(_$NetworkFailureImpl) then,
  ) = __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
    _$NetworkFailureImpl _value,
    $Res Function(_$NetworkFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$NetworkFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl(
    this.message, {
    this.code = 503,
    final String? $type,
  }) : $type = $type ?? 'network';

  factory _$NetworkFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.network(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return network(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return network?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkFailureImplToJson(this);
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure(final String message, {final int code}) =
      _$NetworkFailureImpl;

  factory NetworkFailure.fromJson(Map<String, dynamic> json) =
      _$NetworkFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$PermissionFailureImplCopyWith(
    _$PermissionFailureImpl value,
    $Res Function(_$PermissionFailureImpl) then,
  ) = __$$PermissionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$PermissionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$PermissionFailureImpl>
    implements _$$PermissionFailureImplCopyWith<$Res> {
  __$$PermissionFailureImplCopyWithImpl(
    _$PermissionFailureImpl _value,
    $Res Function(_$PermissionFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$PermissionFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionFailureImpl implements PermissionFailure {
  const _$PermissionFailureImpl(
    this.message, {
    this.code = 403,
    final String? $type,
  }) : $type = $type ?? 'permission';

  factory _$PermissionFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.permission(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      __$$PermissionFailureImplCopyWithImpl<_$PermissionFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return permission(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return permission?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return permission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (permission != null) {
      return permission(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionFailureImplToJson(this);
  }
}

abstract class PermissionFailure implements Failure {
  const factory PermissionFailure(final String message, {final int code}) =
      _$PermissionFailureImpl;

  factory PermissionFailure.fromJson(Map<String, dynamic> json) =
      _$PermissionFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionFailureImplCopyWith<_$PermissionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(
    _$UnexpectedFailureImpl value,
    $Res Function(_$UnexpectedFailureImpl) then,
  ) = __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(
    _$UnexpectedFailureImpl _value,
    $Res Function(_$UnexpectedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? code = null}) {
    return _then(
      _$UnexpectedFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnexpectedFailureImpl implements UnexpectedFailure {
  const _$UnexpectedFailureImpl(
    this.message, {
    this.code = 500,
    final String? $type,
  }) : $type = $type ?? 'unexpected';

  factory _$UnexpectedFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnexpectedFailureImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final int code;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.unexpected(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, int code) database,
    required TResult Function(String message, int code) validation,
    required TResult Function(String message, int code) notFound,
    required TResult Function(String message, int code) server,
    required TResult Function(String message, int code) network,
    required TResult Function(String message, int code) permission,
    required TResult Function(String message, int code) unexpected,
  }) {
    return unexpected(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, int code)? database,
    TResult? Function(String message, int code)? validation,
    TResult? Function(String message, int code)? notFound,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message, int code)? network,
    TResult? Function(String message, int code)? permission,
    TResult? Function(String message, int code)? unexpected,
  }) {
    return unexpected?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, int code)? database,
    TResult Function(String message, int code)? validation,
    TResult Function(String message, int code)? notFound,
    TResult Function(String message, int code)? server,
    TResult Function(String message, int code)? network,
    TResult Function(String message, int code)? permission,
    TResult Function(String message, int code)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(ValidationFailure value) validation,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NetworkFailure value) network,
    required TResult Function(PermissionFailure value) permission,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(ValidationFailure value)? validation,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(PermissionFailure value)? permission,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DatabaseFailure value)? database,
    TResult Function(ValidationFailure value)? validation,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ServerFailure value)? server,
    TResult Function(NetworkFailure value)? network,
    TResult Function(PermissionFailure value)? permission,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnexpectedFailureImplToJson(this);
  }
}

abstract class UnexpectedFailure implements Failure {
  const factory UnexpectedFailure(final String message, {final int code}) =
      _$UnexpectedFailureImpl;

  factory UnexpectedFailure.fromJson(Map<String, dynamic> json) =
      _$UnexpectedFailureImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
