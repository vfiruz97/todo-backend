import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';
import '../../domain/repositories/i_todo_repository.dart';

part 'delete_todo.freezed.dart';
part 'delete_todo.g.dart';

@injectable
class DeleteTodo {
  const DeleteTodo(this.repository);

  final ITodoRepository repository;

  Future<void> call(DeleteTodoParams params) async {
    if (params.id == null) {
      throw Failure.validation('Todo ID is required');
    }

    final id = int.tryParse(params.id!);
    if (id == null) {
      throw Failure.validation('Invalid todo ID format');
    }

    if (id <= 0) {
      throw Failure.validation('Todo ID must be a positive integer');
    }

    return await repository.delete(id);
  }
}

@freezed
abstract class DeleteTodoParams with _$DeleteTodoParams {
  const factory DeleteTodoParams({required String? id}) = _DeleteTodoParams;

  factory DeleteTodoParams.fromJson(Map<String, dynamic> json) => _$DeleteTodoParamsFromJson(json);
}
