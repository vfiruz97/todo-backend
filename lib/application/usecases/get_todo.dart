import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';
import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';

part 'get_todo.freezed.dart';
part 'get_todo.g.dart';

@injectable
class GetTodo {
  const GetTodo(this.repository);

  final ITodoRepository repository;

  Future<Todo?> call(GetTodoParams params) async {
    if (params.id <= 0) {
      throw Failure.validation('Todo ID must be a positive integer');
    }

    return await repository.getById(params.id);
  }
}

@freezed
abstract class GetTodoParams with _$GetTodoParams {
  const factory GetTodoParams({required int id}) = _GetTodoParams;

  factory GetTodoParams.fromJson(Map<String, dynamic> json) => _$GetTodoParamsFromJson(json);
}
