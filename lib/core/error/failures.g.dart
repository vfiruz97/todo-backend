// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatabaseFailure _$DatabaseFailureFromJson(Map<String, dynamic> json) =>
    DatabaseFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 500,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DatabaseFailureToJson(DatabaseFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

ValidationFailure _$ValidationFailureFromJson(Map<String, dynamic> json) =>
    ValidationFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 400,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValidationFailureToJson(ValidationFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

NotFoundFailure _$NotFoundFailureFromJson(Map<String, dynamic> json) =>
    NotFoundFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 404,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NotFoundFailureToJson(NotFoundFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

ServerFailure _$ServerFailureFromJson(Map<String, dynamic> json) =>
    ServerFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 500,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerFailureToJson(ServerFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

NetworkFailure _$NetworkFailureFromJson(Map<String, dynamic> json) =>
    NetworkFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 503,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NetworkFailureToJson(NetworkFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

PermissionFailure _$PermissionFailureFromJson(Map<String, dynamic> json) =>
    PermissionFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 403,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PermissionFailureToJson(PermissionFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

UnexpectedFailure _$UnexpectedFailureFromJson(Map<String, dynamic> json) =>
    UnexpectedFailure(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 500,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnexpectedFailureToJson(UnexpectedFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };
