import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_backend/infrastructure/config/database_config.dart';
import 'package:todo_backend/infrastructure/database/app_database.dart';
import 'package:todo_backend/infrastructure/database/daos/todo_dao.dart';

import 'injection.config.dart';

@module
abstract class RegisterModule {
  @singleton
  DatabaseConfig get dbConfig => DatabaseConfig.fromDotEnv();

  @lazySingleton
  TodoItemsDao get todoItemsDao => getIt<AppDatabase>().todoItemsDao;
}

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
FutureOr<void> configureDependencies() => getIt.init();
