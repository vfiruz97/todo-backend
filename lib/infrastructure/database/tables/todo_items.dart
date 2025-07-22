import 'package:drift/drift.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 255)();
  TextColumn get description => text().nullable()();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();
}
