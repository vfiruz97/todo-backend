import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/todo.dart';
import '../../domain/repositories/i_todo_repository.dart';
import '../database/app_database.dart';
import '../database/daos/todo_dao.dart';
import '../dtos/todo_dto.dart';

@Singleton(as: ITodoRepository)
class TodoRepository implements ITodoRepository {
  final TodoItemsDao todoItemsDao;

  const TodoRepository(this.todoItemsDao);

  @override
  Future<Todo> create(Todo todo) async {
    final dto = TodoDto.fromEntity(todo);
    final companion = dto.toTodoItems().copyWith(id: const Value.absent());
    final insertedId = await todoItemsDao.insertItem(companion);
    return todo.copyWith(id: insertedId);
  }

  @override
  Future<void> delete(int id) async {
    final companion = TodoItemsCompanion(id: Value(id));
    await todoItemsDao.deleteItem(companion);
  }

  @override
  Future<List<Todo>> getAll() async {
    final todoItems = await todoItemsDao.getAll();
    return todoItems
        .map(
          (item) => TodoDto(
            id: item.id,
            title: item.title,
            description: item.description ?? '',
            isCompleted: item.isCompleted,
            createdAt: item.createdAt,
            updatedAt: item.updatedAt,
          ).toEntity(),
        )
        .toList();
  }

  @override
  Future<Todo?> getById(int id) async {
    final todoItem = await todoItemsDao.getById(id);
    if (todoItem == null) return null;

    return TodoDto(
      id: todoItem.id,
      title: todoItem.title,
      description: todoItem.description ?? '',
      isCompleted: todoItem.isCompleted,
      createdAt: todoItem.createdAt,
      updatedAt: todoItem.updatedAt,
    ).toEntity();
  }

  @override
  Future<Todo> update(Todo todo) async {
    final dto = TodoDto.fromEntity(todo.copyWith(updatedAt: DateTime.now()));
    final companion = dto.toTodoItems();
    await todoItemsDao.updateItem(companion);
    return dto.toEntity();
  }
}
