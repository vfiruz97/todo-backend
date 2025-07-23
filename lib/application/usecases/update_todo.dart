import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';

part 'update_todo.freezed.dart';
part 'update_todo.g.dart';

@injectable
class UpdateTodo {
  const UpdateTodo(this.repository);

  final ITodoRepository repository;

  Future<Todo> call(String? idString, UpdateTodoParams params) async {
    if (idString == null) {
      throw Failure.validation('Todo ID is required');
    }

    final id = int.tryParse(idString);
    if (id == null) {
      throw Failure.validation('Invalid todo ID format');
    }

    if (id <= 0) {
      throw Failure.validation('Todo ID must be a positive integer');
    }

    if (params.title != null && params.title!.isEmpty) {
      throw Failure.validation('Title cannot be empty');
    }

    final existingTodo = await repository.getById(id);
    if (existingTodo == null) {
      throw Failure.notFound('Todo with ID $id not found');
    }

    final updatedTodo = existingTodo.copyWith(
      title: params.title ?? existingTodo.title,
      description: params.description ?? existingTodo.description,
      isCompleted: params.isCompleted ?? existingTodo.isCompleted,
      updatedAt: DateTime.now(),
    );

    return await repository.update(updatedTodo);
  }
}

@freezed
abstract class UpdateTodoParams with _$UpdateTodoParams {
  const factory UpdateTodoParams({String? title, String? description, bool? isCompleted}) = _UpdateTodoParams;

  factory UpdateTodoParams.fromJson(Map<String, dynamic> json) => _$UpdateTodoParamsFromJson(json);
}
