import 'package:injectable/injectable.dart';

import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';

@injectable
class GetAllTodos {
  const GetAllTodos(this.repository);

  final ITodoRepository repository;

  Future<List<Todo>> call() async {
    return await repository.getAll();
  }
}
