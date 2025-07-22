import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:injectable/injectable.dart';
import 'package:postgres/postgres.dart' as pg;

import '../config/database_config.dart';
import 'daos/todo_dao.dart';
import 'tables/todo_items.dart';

part 'app_database.g.dart';

QueryExecutor _openConnection(DatabaseConfig dbConfig) {
  return PgDatabase(
    endpoint: pg.Endpoint(
      host: dbConfig.host,
      port: dbConfig.port,
      database: dbConfig.database,
      username: dbConfig.username,
      password: dbConfig.password,
    ),
    settings: pg.ConnectionSettings(
      applicationName: 'TodoApp',
      connectTimeout: dbConfig.connectionTimeout,
      sslMode: pg.SslMode.disable,
    ),
    logStatements: true,
    enableMigrations: true,
  );
}

@DriftDatabase(tables: [TodoItems], daos: [TodoItemsDao])
@lazySingleton
class AppDatabase extends _$AppDatabase {
  AppDatabase(DatabaseConfig dbConfig) : super(_openConnection(dbConfig));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
  );
}
