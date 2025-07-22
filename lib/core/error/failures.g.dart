// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DatabaseFailureImpl _$$DatabaseFailureImplFromJson(
  Map<String, dynamic> json,
) => _$DatabaseFailureImpl(
  json['message'] as String,
  code: (json['code'] as num?)?.toInt() ?? 500,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$DatabaseFailureImplToJson(
  _$DatabaseFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};

_$ValidationFailureImpl _$$ValidationFailureImplFromJson(
  Map<String, dynamic> json,
) => _$ValidationFailureImpl(
  json['message'] as String,
  code: (json['code'] as num?)?.toInt() ?? 400,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ValidationFailureImplToJson(
  _$ValidationFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};

_$NotFoundFailureImpl _$$NotFoundFailureImplFromJson(
  Map<String, dynamic> json,
) => _$NotFoundFailureImpl(
  json['message'] as String,
  code: (json['code'] as num?)?.toInt() ?? 404,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$NotFoundFailureImplToJson(
  _$NotFoundFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};

_$ServerFailureImpl _$$ServerFailureImplFromJson(Map<String, dynamic> json) =>
    _$ServerFailureImpl(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 500,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ServerFailureImplToJson(_$ServerFailureImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'runtimeType': instance.$type,
    };

_$NetworkFailureImpl _$$NetworkFailureImplFromJson(Map<String, dynamic> json) =>
    _$NetworkFailureImpl(
      json['message'] as String,
      code: (json['code'] as num?)?.toInt() ?? 503,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NetworkFailureImplToJson(
  _$NetworkFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};

_$PermissionFailureImpl _$$PermissionFailureImplFromJson(
  Map<String, dynamic> json,
) => _$PermissionFailureImpl(
  json['message'] as String,
  code: (json['code'] as num?)?.toInt() ?? 403,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$PermissionFailureImplToJson(
  _$PermissionFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};

_$UnexpectedFailureImpl _$$UnexpectedFailureImplFromJson(
  Map<String, dynamic> json,
) => _$UnexpectedFailureImpl(
  json['message'] as String,
  code: (json['code'] as num?)?.toInt() ?? 500,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$UnexpectedFailureImplToJson(
  _$UnexpectedFailureImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'runtimeType': instance.$type,
};
