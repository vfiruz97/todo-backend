// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dotenv/dotenv.dart' as _i320;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../application/usecases/create_todo.dart' as _i426;
import '../../application/usecases/delete_todo.dart' as _i77;
import '../../application/usecases/get_all_todos.dart' as _i1052;
import '../../application/usecases/get_todo.dart' as _i827;
import '../../application/usecases/update_todo.dart' as _i216;
import '../../domain/repositories/i_todo_repository.dart' as _i667;
import '../../infrastructure/config/database_config.dart' as _i520;
import '../../infrastructure/database/app_database.dart' as _i89;
import '../../infrastructure/database/daos/todo_dao.dart' as _i298;
import '../../infrastructure/repositories/todo_repository.dart' as _i455;
import '../../presentation/controllers/api/todos/create_todo_controller.dart'
    as _i355;
import '../../presentation/controllers/api/todos/delete_todo_controller.dart'
    as _i861;
import '../../presentation/controllers/api/todos/get_all_todos_controller.dart'
    as _i474;
import '../../presentation/controllers/api/todos/get_todo_controller.dart'
    as _i515;
import '../../presentation/controllers/api/todos/update_todo_controller.dart'
    as _i802;
import '../../presentation/routes/api.dart' as _i1043;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i320.DotEnv>(() => registerModule.dotEnv);
    gh.singleton<_i520.DatabaseConfig>(() => registerModule.dbConfig);
    gh.lazySingleton<_i298.TodoItemsDao>(() => registerModule.todoItemsDao);
    gh.lazySingleton<_i89.AppDatabase>(
      () => _i89.AppDatabase(gh<_i520.DatabaseConfig>()),
    );
    gh.singleton<_i667.ITodoRepository>(
      () => _i455.TodoRepository(gh<_i298.TodoItemsDao>()),
    );
    gh.factory<_i426.CreateTodo>(
      () => _i426.CreateTodo(gh<_i667.ITodoRepository>()),
    );
    gh.factory<_i827.GetTodo>(() => _i827.GetTodo(gh<_i667.ITodoRepository>()));
    gh.factory<_i1052.GetAllTodos>(
      () => _i1052.GetAllTodos(gh<_i667.ITodoRepository>()),
    );
    gh.factory<_i216.UpdateTodo>(
      () => _i216.UpdateTodo(gh<_i667.ITodoRepository>()),
    );
    gh.factory<_i77.DeleteTodo>(
      () => _i77.DeleteTodo(gh<_i667.ITodoRepository>()),
    );
    gh.singleton<_i861.DeleteTodoController>(
      () => _i861.DeleteTodoController(deleteTodo: gh<_i77.DeleteTodo>()),
    );
    gh.singleton<_i355.CreateTodoController>(
      () => _i355.CreateTodoController(createTodo: gh<_i426.CreateTodo>()),
    );
    gh.singleton<_i474.GetAllTodosController>(
      () => _i474.GetAllTodosController(getAllTodos: gh<_i1052.GetAllTodos>()),
    );
    gh.singleton<_i802.UpdateTodoController>(
      () => _i802.UpdateTodoController(updateTodo: gh<_i216.UpdateTodo>()),
    );
    gh.singleton<_i515.GetTodoController>(
      () => _i515.GetTodoController(getTodo: gh<_i827.GetTodo>()),
    );
    gh.singleton<_i1043.Api>(
      () => _i1043.Api(
        createTodoController: gh<_i355.CreateTodoController>(),
        getTodoController: gh<_i515.GetTodoController>(),
        getAllTodosController: gh<_i474.GetAllTodosController>(),
        updateTodoController: gh<_i802.UpdateTodoController>(),
        deleteTodoController: gh<_i861.DeleteTodoController>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i464.RegisterModule {}
