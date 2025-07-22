import 'package:injectable/injectable.dart';
import '../../domain/entities/todo.dart';
import '../database/daos/todo_dao.dart';

import '../../domain/repositories/i_todo_repository.dart';

@Singleton(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  final TodoItemsDao todoItemsDao;

  const TodoRepository(this.todoItemsDao);

  @override
  Future<Todo> create(Todo todo) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Todo?> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Todo> update(Todo todo) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
