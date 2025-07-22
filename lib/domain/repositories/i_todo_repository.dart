import '../entities/todo.dart';

abstract class ITodoRepository {
  Future<Todo> create(Todo todo);
  Future<Todo?> getById(int id);
  Future<List<Todo>> getAll();
  Future<Todo> update(Todo todo);
  Future<void> delete(int id);
}
