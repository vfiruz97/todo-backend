// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTaskParams _$UpdateTaskParamsFromJson(Map<String, dynamic> json) =>
    _UpdateTaskParams(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
    );

Map<String, dynamic> _$UpdateTaskParamsToJson(_UpdateTaskParams instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'is_completed': instance.isCompleted,
    };
