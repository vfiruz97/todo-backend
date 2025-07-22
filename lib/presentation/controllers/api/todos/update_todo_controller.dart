import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/update_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';

@singleton
class UpdateTodoController {
  final UpdateTodo _updateTodo;

  const UpdateTodoController({required UpdateTodo updateTodo}) : _updateTodo = updateTodo;

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

      final bodyBytes = await request.read().first;
      final updateTodoRequest = pt.UpdateTodoRequest.fromBuffer(bodyBytes);

      if (updateTodoRequest.title.isEmpty) {
        return _errorResponse('Title cannot be empty', HttpStatus.badRequest);
      }

      final params = UpdateTodoParams(
        id: id,
        title: updateTodoRequest.hasTitle() ? updateTodoRequest.title : null,
        description: updateTodoRequest.hasDescription() ? updateTodoRequest.description : null,
        isCompleted: updateTodoRequest.hasIsCompleted() ? updateTodoRequest.isCompleted : null,
      );

      final result = await _updateTodo(params);

      return _successResponse(TodoDto.fromEntity(result).toTodoProto().writeToBuffer());
    } on Failure catch (e) {
      return _errorResponse(e.message, HttpStatus.internalServerError);
    } catch (e) {
      return _errorResponse('Invalid Protobuf format or internal server error', HttpStatus.badRequest);
    }
  }

  Response _successResponse(List<int> body, [int statusCode = HttpStatus.ok]) {
    return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: body);
  }

  Response _errorResponse(String message, int statusCode) {
    final errorResponse = pt.ErrorResponse(message: message, code: statusCode);
    return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: errorResponse.writeToBuffer());
  }
}
