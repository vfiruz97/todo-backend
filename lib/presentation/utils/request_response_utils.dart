import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

class RequestResponseUtils {
  static bool isProtobuf(Request request) {
    final contentType = request.headers['content-type'] ?? '';
    return contentType.contains('application/protobuf') || contentType.contains('application/x-protobuf');
  }

  static bool isJson(Request request) {
    final contentType = request.headers['content-type'] ?? '';
    return contentType.contains('application/json');
  }

  static Future<T> parseRequest<T>(
    Request request, {
    required T Function(List<int>) fromProtobuf,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    final bodyBytes = await request.read().first;

    if (isProtobuf(request)) {
      return fromProtobuf(bodyBytes);
    } else if (isJson(request)) {
      final bodyString = String.fromCharCodes(bodyBytes);
      final jsonData = jsonDecode(bodyString) as Map<String, dynamic>;
      return fromJson(jsonData);
    } else {
      throw ArgumentError('Unsupported content type');
    }
  }

  static Response successResponse(
    Request request,
    dynamic data, {
    int statusCode = HttpStatus.ok,
    List<int> Function()? toProtobuf,
    Map<String, dynamic> Function()? toJson,
  }) {
    if (isProtobuf(request)) {
      final protobufData = toProtobuf?.call() ?? (data as List<int>);
      return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: protobufData);
    } else {
      final jsonData = toJson?.call() ?? data;
      return Response(statusCode, headers: {'Content-Type': 'application/json'}, body: jsonEncode(jsonData));
    }
  }

  static Response errorResponse(Request request, String message, int statusCode) {
    if (isProtobuf(request)) {
      final errorResponse = pt.ErrorResponse(message: message, code: statusCode);
      return Response(
        statusCode,
        headers: {'Content-Type': 'application/protobuf'},
        body: errorResponse.writeToBuffer(),
      );
    } else {
      return Response(
        statusCode,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'error': {'message': message, 'code': statusCode},
        }),
      );
    }
  }
}
