import 'package:drift/drift.dart' show Value;
import 'package:fixnum/fixnum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../domain/entities/todo.dart';
import '../database/app_database.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

@freezed
class TodoDto with _$TodoDto {
  const TodoDto._();

  const factory TodoDto({
    int? id,
    required String title,
    required String description,
    required bool isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TodoDto;

  factory TodoDto.fromEntity(Todo todo) {
    return TodoDto(
      id: todo.id,
      title: todo.title,
      description: todo.description,
      isCompleted: todo.isCompleted,
      createdAt: todo.createdAt,
      updatedAt: todo.updatedAt,
    );
  }

  Todo toEntity() {
    return Todo(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory TodoDto.fromTodoProto(pt.Todo todo) {
    return TodoDto(
      id: todo.hasId() ? todo.id : null,
      title: todo.title,
      description: todo.description,
      isCompleted: todo.isCompleted,
      createdAt: DateTime.fromMillisecondsSinceEpoch(todo.createdAt.toInt()),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(todo.updatedAt.toInt()),
    );
  }

  pt.Todo toTodoProto() {
    final todo = pt.Todo(
      title: title,
      description: description,
      isCompleted: isCompleted,
      createdAt: Int64(createdAt.millisecondsSinceEpoch),
      updatedAt: Int64(updatedAt.millisecondsSinceEpoch),
    );
    if (id != null) todo.id = id!;
    return todo;
  }

  factory TodoDto.fromTodoItems(TodoItemsCompanion todo) {
    return TodoDto(
      id: todo.id.value,
      title: todo.title.value,
      description: todo.description.value ?? '',
      isCompleted: todo.isCompleted.value,
      createdAt: todo.createdAt.value,
      updatedAt: todo.updatedAt.value,
    );
  }

  TodoItemsCompanion toTodoItems() {
    return TodoItemsCompanion(
      id: Value(id!),
      title: Value(title),
      description: Value(description),
      isCompleted: Value(isCompleted),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory TodoDto.fromJson(Map<String, dynamic> json) => _$TodoDtoFromJson(json);
}
