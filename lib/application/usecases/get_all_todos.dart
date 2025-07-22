import 'package:injectable/injectable.dart';

import '../../core/usecases/usecase.dart';
import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';

@injectable
class GetAllTodos implements NoParamsUseCase<List<Todo>> {
  const GetAllTodos(this.repository);

  final ITodoRepository repository;

  @override
  Future<List<Todo>> call() async {
    return await repository.getAll();
  }
}
