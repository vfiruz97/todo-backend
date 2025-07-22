import 'package:fixnum/fixnum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

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

  factory TaskDto.fromTaskProto(pt.Task task) {
    return TaskDto(
      id: task.hasId() ? task.id : null,
      title: task.title,
      description: task.description,
      isCompleted: task.isCompleted,
      createdAt: DateTime.fromMillisecondsSinceEpoch(task.createdAt.toInt()),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(task.updatedAt.toInt()),
    );
  }

  pt.Task toTaskProto() {
    return pt.Task(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      createdAt: Int64(createdAt.millisecondsSinceEpoch),
      updatedAt: Int64(updatedAt.millisecondsSinceEpoch),
    );
  }

  factory TaskDto.fromJson(Map<String, dynamic> json) => _$TaskDtoFromJson(json);
}
