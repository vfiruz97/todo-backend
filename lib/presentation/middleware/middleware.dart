import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';

Middleware corsMiddleware() {
  return (Handler innerHandler) {
    return (Request request) async {
      if (request.method == 'OPTIONS') {
        return Response.ok(
          null,
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
            'Access-Control-Allow-Headers': 'Content-Type, Authorization',
            'Access-Control-Max-Age': '86400',
          },
        );
      }

      final response = await innerHandler(request);

      return response.change(
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
          'Access-Control-Allow-Headers': 'Content-Type, Authorization',
          ...response.headers,
        },
      );
    };
  };
}

Middleware contentTypeMiddleware() {
  return (Handler innerHandler) {
    return (Request request) async {
      if (request.method == 'POST' || request.method == 'PUT') {
        final contentType = request.headers['content-type'];
        if (contentType == null || !contentType.contains('application/json')) {
          return Response(
            HttpStatus.unsupportedMediaType,
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({
              'error': {'message': 'Content-Type must be application/json', 'code': HttpStatus.unsupportedMediaType},
            }),
          );
        }
      }

      return await innerHandler(request);
    };
  };
}

Middleware errorHandlingMiddleware() {
  return (Handler innerHandler) {
    return (Request request) async {
      try {
        return await innerHandler(request);
      } catch (error, stackTrace) {
        print('Unhandled error: $error');
        print('Stack trace: $stackTrace');

        return Response(
          HttpStatus.internalServerError,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'error': {'message': 'Internal server error', 'code': HttpStatus.internalServerError},
          }),
        );
      }
    };
  };
}

Middleware requestLoggingMiddleware() {
  return (Handler innerHandler) {
    return (Request request) async {
      final start = DateTime.now();
      print('${request.method} ${request.requestedUri}');

      final response = await innerHandler(request);

      final duration = DateTime.now().difference(start);
      print('${response.statusCode} - ${duration.inMilliseconds}ms');

      return response;
    };
  };
}
