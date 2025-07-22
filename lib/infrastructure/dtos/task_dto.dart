import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
abstract class TaskDto with _$TaskDto {
  const TaskDto._();

  const factory TaskDto({
    int? id,
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TaskDto;

  factory TaskDto.fromEntity(Task task) {
    return TaskDto(
      id: task.id,
      title: task.title,
      description: task.description,
      isCompleted: task.isCompleted,
      createdAt: task.createdAt,
      updatedAt: task.updatedAt,
    );
  }

  Task toEntity() {
    return Task(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) => _$TaskDtoFromJson(json);
}
