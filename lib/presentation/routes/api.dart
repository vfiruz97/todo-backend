import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/todo_controller.dart';

@singleton
class Api {
  const Api(this.todoController);

  final TodoController todoController;

  Router get routerV1 {
    final router = Router();

    router.post('/todos', todoController.create);
    router.get('/todos', todoController.getAll);
    router.get('/todos/<id>', todoController.getById);
    router.put('/todos/<id>', todoController.update);
    router.delete('/todos/<id>', todoController.delete);

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
