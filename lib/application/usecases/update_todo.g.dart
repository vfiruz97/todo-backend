// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTodoParamsImpl _$$UpdateTodoParamsImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTodoParamsImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  isCompleted: json['is_completed'] as bool?,
);

Map<String, dynamic> _$$UpdateTodoParamsImplToJson(
  _$UpdateTodoParamsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'is_completed': instance.isCompleted,
};
