import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../../domain/repositories/i_todo_repository.dart';

part 'delete_todo.freezed.dart';
part 'delete_todo.g.dart';

@injectable
class DeleteTodo implements UseCase<void, DeleteTodoParams> {
  const DeleteTodo(this.repository);

  final ITodoRepository repository;

  @override
  Future<void> call(DeleteTodoParams params) async {
    if (params.id <= 0) {
      throw Failure.validation('Todo ID must be a positive integer');
    }

    return await repository.delete(params.id);
  }
}

@freezed
abstract class DeleteTodoParams with _$DeleteTodoParams {
  const factory DeleteTodoParams({required int id}) = _DeleteTodoParams;

  factory DeleteTodoParams.fromJson(Map<String, dynamic> json) => _$DeleteTodoParamsFromJson(json);
}
