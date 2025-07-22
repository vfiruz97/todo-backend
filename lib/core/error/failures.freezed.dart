// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Failure _$FailureFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'database':
          return DatabaseFailure.fromJson(
            json
          );
                case 'validation':
          return ValidationFailure.fromJson(
            json
          );
                case 'notFound':
          return NotFoundFailure.fromJson(
            json
          );
                case 'server':
          return ServerFailure.fromJson(
            json
          );
                case 'network':
          return NetworkFailure.fromJson(
            json
          );
                case 'permission':
          return PermissionFailure.fromJson(
            json
          );
                case 'unexpected':
          return UnexpectedFailure.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Failure',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Failure {

 String get message; int get code;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);

  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? code = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DatabaseFailure value)?  database,TResult Function( ValidationFailure value)?  validation,TResult Function( NotFoundFailure value)?  notFound,TResult Function( ServerFailure value)?  server,TResult Function( NetworkFailure value)?  network,TResult Function( PermissionFailure value)?  permission,TResult Function( UnexpectedFailure value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DatabaseFailure() when database != null:
return database(_that);case ValidationFailure() when validation != null:
return validation(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case ServerFailure() when server != null:
return server(_that);case NetworkFailure() when network != null:
return network(_that);case PermissionFailure() when permission != null:
return permission(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DatabaseFailure value)  database,required TResult Function( ValidationFailure value)  validation,required TResult Function( NotFoundFailure value)  notFound,required TResult Function( ServerFailure value)  server,required TResult Function( NetworkFailure value)  network,required TResult Function( PermissionFailure value)  permission,required TResult Function( UnexpectedFailure value)  unexpected,}){
final _that = this;
switch (_that) {
case DatabaseFailure():
return database(_that);case ValidationFailure():
return validation(_that);case NotFoundFailure():
return notFound(_that);case ServerFailure():
return server(_that);case NetworkFailure():
return network(_that);case PermissionFailure():
return permission(_that);case UnexpectedFailure():
return unexpected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DatabaseFailure value)?  database,TResult? Function( ValidationFailure value)?  validation,TResult? Function( NotFoundFailure value)?  notFound,TResult? Function( ServerFailure value)?  server,TResult? Function( NetworkFailure value)?  network,TResult? Function( PermissionFailure value)?  permission,TResult? Function( UnexpectedFailure value)?  unexpected,}){
final _that = this;
switch (_that) {
case DatabaseFailure() when database != null:
return database(_that);case ValidationFailure() when validation != null:
return validation(_that);case NotFoundFailure() when notFound != null:
return notFound(_that);case ServerFailure() when server != null:
return server(_that);case NetworkFailure() when network != null:
return network(_that);case PermissionFailure() when permission != null:
return permission(_that);case UnexpectedFailure() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  int code)?  database,TResult Function( String message,  int code)?  validation,TResult Function( String message,  int code)?  notFound,TResult Function( String message,  int code)?  server,TResult Function( String message,  int code)?  network,TResult Function( String message,  int code)?  permission,TResult Function( String message,  int code)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DatabaseFailure() when database != null:
return database(_that.message,_that.code);case ValidationFailure() when validation != null:
return validation(_that.message,_that.code);case NotFoundFailure() when notFound != null:
return notFound(_that.message,_that.code);case ServerFailure() when server != null:
return server(_that.message,_that.code);case NetworkFailure() when network != null:
return network(_that.message,_that.code);case PermissionFailure() when permission != null:
return permission(_that.message,_that.code);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  int code)  database,required TResult Function( String message,  int code)  validation,required TResult Function( String message,  int code)  notFound,required TResult Function( String message,  int code)  server,required TResult Function( String message,  int code)  network,required TResult Function( String message,  int code)  permission,required TResult Function( String message,  int code)  unexpected,}) {final _that = this;
switch (_that) {
case DatabaseFailure():
return database(_that.message,_that.code);case ValidationFailure():
return validation(_that.message,_that.code);case NotFoundFailure():
return notFound(_that.message,_that.code);case ServerFailure():
return server(_that.message,_that.code);case NetworkFailure():
return network(_that.message,_that.code);case PermissionFailure():
return permission(_that.message,_that.code);case UnexpectedFailure():
return unexpected(_that.message,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  int code)?  database,TResult? Function( String message,  int code)?  validation,TResult? Function( String message,  int code)?  notFound,TResult? Function( String message,  int code)?  server,TResult? Function( String message,  int code)?  network,TResult? Function( String message,  int code)?  permission,TResult? Function( String message,  int code)?  unexpected,}) {final _that = this;
switch (_that) {
case DatabaseFailure() when database != null:
return database(_that.message,_that.code);case ValidationFailure() when validation != null:
return validation(_that.message,_that.code);case NotFoundFailure() when notFound != null:
return notFound(_that.message,_that.code);case ServerFailure() when server != null:
return server(_that.message,_that.code);case NetworkFailure() when network != null:
return network(_that.message,_that.code);case PermissionFailure() when permission != null:
return permission(_that.message,_that.code);case UnexpectedFailure() when unexpected != null:
return unexpected(_that.message,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class DatabaseFailure implements Failure {
  const DatabaseFailure(this.message, {this.code = 500, final  String? $type}): $type = $type ?? 'database';
  factory DatabaseFailure.fromJson(Map<String, dynamic> json) => _$DatabaseFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatabaseFailureCopyWith<DatabaseFailure> get copyWith => _$DatabaseFailureCopyWithImpl<DatabaseFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatabaseFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DatabaseFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.database(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $DatabaseFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(DatabaseFailure value, $Res Function(DatabaseFailure) _then) = _$DatabaseFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._self, this._then);

  final DatabaseFailure _self;
  final $Res Function(DatabaseFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(DatabaseFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ValidationFailure implements Failure {
  const ValidationFailure(this.message, {this.code = 400, final  String? $type}): $type = $type ?? 'validation';
  factory ValidationFailure.fromJson(Map<String, dynamic> json) => _$ValidationFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationFailureCopyWith<ValidationFailure> get copyWith => _$ValidationFailureCopyWithImpl<ValidationFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidationFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.validation(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ValidationFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ValidationFailureCopyWith(ValidationFailure value, $Res Function(ValidationFailure) _then) = _$ValidationFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$ValidationFailureCopyWithImpl<$Res>
    implements $ValidationFailureCopyWith<$Res> {
  _$ValidationFailureCopyWithImpl(this._self, this._then);

  final ValidationFailure _self;
  final $Res Function(ValidationFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(ValidationFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NotFoundFailure implements Failure {
  const NotFoundFailure(this.message, {this.code = 404, final  String? $type}): $type = $type ?? 'notFound';
  factory NotFoundFailure.fromJson(Map<String, dynamic> json) => _$NotFoundFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundFailureCopyWith<NotFoundFailure> get copyWith => _$NotFoundFailureCopyWithImpl<NotFoundFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotFoundFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.notFound(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $NotFoundFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NotFoundFailureCopyWith(NotFoundFailure value, $Res Function(NotFoundFailure) _then) = _$NotFoundFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$NotFoundFailureCopyWithImpl<$Res>
    implements $NotFoundFailureCopyWith<$Res> {
  _$NotFoundFailureCopyWithImpl(this._self, this._then);

  final NotFoundFailure _self;
  final $Res Function(NotFoundFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(NotFoundFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerFailure implements Failure {
  const ServerFailure(this.message, {this.code = 500, final  String? $type}): $type = $type ?? 'server';
  factory ServerFailure.fromJson(Map<String, dynamic> json) => _$ServerFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.server(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(ServerFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NetworkFailure implements Failure {
  const NetworkFailure(this.message, {this.code = 503, final  String? $type}): $type = $type ?? 'network';
  factory NetworkFailure.fromJson(Map<String, dynamic> json) => _$NetworkFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.network(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(NetworkFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class PermissionFailure implements Failure {
  const PermissionFailure(this.message, {this.code = 403, final  String? $type}): $type = $type ?? 'permission';
  factory PermissionFailure.fromJson(Map<String, dynamic> json) => _$PermissionFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionFailureCopyWith<PermissionFailure> get copyWith => _$PermissionFailureCopyWithImpl<PermissionFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PermissionFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.permission(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $PermissionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $PermissionFailureCopyWith(PermissionFailure value, $Res Function(PermissionFailure) _then) = _$PermissionFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$PermissionFailureCopyWithImpl<$Res>
    implements $PermissionFailureCopyWith<$Res> {
  _$PermissionFailureCopyWithImpl(this._self, this._then);

  final PermissionFailure _self;
  final $Res Function(PermissionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(PermissionFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class UnexpectedFailure implements Failure {
  const UnexpectedFailure(this.message, {this.code = 500, final  String? $type}): $type = $type ?? 'unexpected';
  factory UnexpectedFailure.fromJson(Map<String, dynamic> json) => _$UnexpectedFailureFromJson(json);

@override final  String message;
@override@JsonKey() final  int code;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedFailureCopyWith<UnexpectedFailure> get copyWith => _$UnexpectedFailureCopyWithImpl<UnexpectedFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnexpectedFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'Failure.unexpected(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $UnexpectedFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UnexpectedFailureCopyWith(UnexpectedFailure value, $Res Function(UnexpectedFailure) _then) = _$UnexpectedFailureCopyWithImpl;
@override @useResult
$Res call({
 String message, int code
});




}
/// @nodoc
class _$UnexpectedFailureCopyWithImpl<$Res>
    implements $UnexpectedFailureCopyWith<$Res> {
  _$UnexpectedFailureCopyWithImpl(this._self, this._then);

  final UnexpectedFailure _self;
  final $Res Function(UnexpectedFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = null,}) {
  return _then(UnexpectedFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
