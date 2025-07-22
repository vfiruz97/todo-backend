import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_backend/core/di/injection.dart';
import 'package:todo_backend/presentation/middleware/middleware.dart';
import 'package:todo_backend/presentation/routes/api.dart';

void main(List<String> args) async {
  await configureDependencies();

  final DotEnv env = getIt<DotEnv>();
  final Api api = getIt<Api>();

  // Create router
  final router = Router();
  router.mount('/api/v1/', api.routerV1.call);

  // 404 handler for unknown routes
  router.all('/<ignored|.*>', (Request request) => Response.notFound('Page not found'));

  // Configure a pipeline with middleware
  final handler = Pipeline()
      .addMiddleware(requestLoggingMiddleware())
      .addMiddleware(errorHandlingMiddleware())
      .addMiddleware(corsMiddleware())
      .addMiddleware(contentTypeMiddleware())
      .addHandler(router.call);

  final ip = InternetAddress.anyIPv4;
  final port = int.parse(env['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);

  print('🚀 Todo Backend Server started!');
  print('📍 Server listening on ${server.address.address}:${server.port}');
}
