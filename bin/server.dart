import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:todo_backend/core/di/injection.dart';
import 'package:todo_backend/domain/repositories/i_todo_repository.dart';
import 'package:todo_backend/presentation/controllers/todo_controller.dart';
import 'package:todo_backend/presentation/middleware/middleware.dart';
import 'package:todo_backend/presentation/routes/app_routes.dart';

void main(List<String> args) async {
  await configureDependencies();

  final ITodoRepository todoRepository = getIt<ITodoRepository>();
  final TodoController todoController = getIt<TodoController>();

  // Create router
  final router = createAppRouter(todoController);

  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline with middleware
  final handler = Pipeline()
      .addMiddleware(requestLoggingMiddleware())
      .addMiddleware(errorHandlingMiddleware())
      .addMiddleware(corsMiddleware())
      .addMiddleware(contentTypeMiddleware())
      .addHandler(router.call);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);

  print('🚀 Todo Backend Server started!');
  print('📍 Server listening on ${server.address.address}:${server.port}');
}
