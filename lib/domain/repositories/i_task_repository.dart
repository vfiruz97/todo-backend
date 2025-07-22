import '../entities/task.dart';

abstract class ITaskRepository {
  Future<Task> create(Task task);
  Future<Task> getById(int id);
  Future<List<Task>> getAll();
  Future<Task> update(Task task);
  Future<void> delete(int id);
}
