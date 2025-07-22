import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/task_controller.dart';

Router createAppRouter(TaskController taskController) {
  final router = Router();

  // Task endpoints
  router.post('/api/v1/tasks', taskController.create);
  router.get('/api/v1/tasks', taskController.getAll);
  router.get('/api/v1/tasks/<id>', taskController.getById);
  router.put('/api/v1/tasks/<id>', taskController.update);
  router.delete('/api/v1/tasks/<id>', taskController.delete);

  // 404 handler for unknown routes
  router.all('/<ignored|.*>', (Request request) {
    return Response.notFound(
      '{"error": {"message": "Route not found", "code": 404}}',
      headers: {'Content-Type': 'application/json'},
    );
  });

  return router;
}
