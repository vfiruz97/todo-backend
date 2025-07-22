import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';

part 'create_todo.freezed.dart';
part 'create_todo.g.dart';

@injectable
class CreateTodo {
  const CreateTodo(this.repository);

  final ITodoRepository repository;

  Future<Todo> call(CreateTodoParams params) async {
    final todo = Todo.create(title: params.title, description: params.description);

    return await repository.create(todo);
  }
}

@freezed
abstract class CreateTodoParams with _$CreateTodoParams {
  const factory CreateTodoParams({required String title, required String description}) = _CreateTodoParams;

  factory CreateTodoParams.fromJson(Map<String, dynamic> json) => _$CreateTodoParamsFromJson(json);
}
