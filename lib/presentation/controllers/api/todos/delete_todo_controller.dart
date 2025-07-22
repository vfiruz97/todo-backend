import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/delete_todo.dart';
import '../../../../core/error/failures.dart';

@singleton
class DeleteTodoController {
  final DeleteTodo _deleteTodo;

  const DeleteTodoController({required DeleteTodo deleteTodo}) : _deleteTodo = deleteTodo;

  Future<Response> handle(Request request) async {
    try {
      final idString = request.params['id'];
      if (idString == null) {
        return _errorResponse('Todo ID is required', HttpStatus.badRequest);
      }

      final id = int.tryParse(idString);
      if (id == null) {
        return _errorResponse('Invalid todo ID format', HttpStatus.badRequest);
      }

      final params = DeleteTodoParams(id: id);
      await _deleteTodo(params);

      return Response(HttpStatus.noContent);
    } on Failure catch (e) {
      return _errorResponse(e.message, HttpStatus.internalServerError);
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
    }
  }

  Response _errorResponse(String message, int statusCode) {
    final errorResponse = pt.ErrorResponse(message: message, code: statusCode);
    return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: errorResponse.writeToBuffer());
  }
}
