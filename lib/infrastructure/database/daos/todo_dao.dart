import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/todo_items.dart';

part 'todo_dao.g.dart';

@DriftAccessor(tables: [TodoItems])
class TodoItemsDao extends DatabaseAccessor<AppDatabase> with _$TodoItemsDaoMixin {
  TodoItemsDao(super.db);

  Future<List<TodoItem>> getAll() async {
    final rows = await (select(
      todoItems,
    )..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc)])).get();
    return rows;
  }

  Future<TodoItem?> getById(int id) {
    return (select(todoItems)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertItem(TodoItemsCompanion entry) {
    return into(todoItems).insert(entry);
  }

  Future<bool> updateItem(TodoItemsCompanion entry) {
    return update(todoItems).replace(entry);
  }

  Future<int> deleteItem(TodoItemsCompanion entry) {
    return (delete(todoItems)..where((tbl) => tbl.id.equals(entry.id.value))).go();
  }
}
