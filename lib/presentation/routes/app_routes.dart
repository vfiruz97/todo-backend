import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/todo_controller.dart';

Router createAppRouter(TodoController todoController) {
  final router = Router();

  // Todo endpoints
  router.post('/api/v1/todos', todoController.create);
  router.get('/api/v1/todos', todoController.getAll);
  router.get('/api/v1/todos/<id>', todoController.getById);
  router.put('/api/v1/todos/<id>', todoController.update);
  router.delete('/api/v1/todos/<id>', todoController.delete);

  // 404 handler for unknown routes
  router.all('/<ignored|.*>', (Request request) {
    return Response.notFound(
      '{"error": {"message": "Route not found", "code": 404}}',
      headers: {'Content-Type': 'application/json'},
    );
  });

  return router;
}
