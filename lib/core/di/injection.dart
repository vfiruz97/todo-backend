import 'dart:async';

import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../infrastructure/config/database_config.dart';
import '../../infrastructure/database/app_database.dart';
import '../../infrastructure/database/daos/todo_dao.dart';
import 'injection.config.dart';

@module
abstract class RegisterModule {
  @singleton
  DotEnv get dotEnv => DotEnv(includePlatformEnvironment: true)..load();

  @singleton
  DatabaseConfig get dbConfig => DatabaseConfig.fromDotEnv(dotEnv);

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
