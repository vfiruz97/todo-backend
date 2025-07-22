// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) => _TaskDto(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  isCompleted: json['is_completed'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$TaskDtoToJson(_TaskDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'is_completed': instance.isCompleted,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};
