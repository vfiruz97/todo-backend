// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTodoParamsImpl _$$UpdateTodoParamsImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateTodoParamsImpl(
  title: json['title'] as String?,
  description: json['description'] as String?,
  isCompleted: json['is_completed'] as bool?,
);

Map<String, dynamic> _$$UpdateTodoParamsImplToJson(
  _$UpdateTodoParamsImpl instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'is_completed': instance.isCompleted,
};
