import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/api/todos/create_todo_controller.dart';
import '../controllers/api/todos/delete_todo_controller.dart';
import '../controllers/api/todos/get_all_todos_controller.dart';
import '../controllers/api/todos/get_todo_controller.dart';
import '../controllers/api/todos/update_todo_controller.dart';

@singleton
class Api {
  const Api({
    required this.createTodoController,
    required this.getTodoController,
    required this.getAllTodosController,
    required this.updateTodoController,
    required this.deleteTodoController,
  });

  final CreateTodoController createTodoController;
  final GetTodoController getTodoController;
  final GetAllTodosController getAllTodosController;
  final UpdateTodoController updateTodoController;
  final DeleteTodoController deleteTodoController;

  Router get routerV1 {
    final router = Router();

    router.post('/tasks', createTodoController.handle);
    router.get('/tasks', getAllTodosController.handle);
    router.get('/tasks/<id>', getTodoController.handle);
    router.put('/tasks/<id>', updateTodoController.handle);
    router.delete('/tasks/<id>', deleteTodoController.handle);

    // 404 handler for unknown routes
    router.all('/<ignored|.*>', (Request request) {
      return Response.notFound(
        '{"error": {"message": "Route not found", "code": 404}}',
        headers: {'Content-Type': 'application/json'},
      );
    });
    return router;
  }
}
