import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/create_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';

@singleton
class CreateTodoController {
  final CreateTodo _createTodo;

  const CreateTodoController({required CreateTodo createTodo}) : _createTodo = createTodo;

  Future<Response> handle(Request request) async {
    try {
      final bodyBytes = await request.read().first;
      final createTodoRequest = pt.CreateTodoRequest.fromBuffer(bodyBytes);

      if (createTodoRequest.title.isEmpty) {
        return _errorResponse('Title cannot be empty', HttpStatus.badRequest);
      }

      final params = CreateTodoParams(title: createTodoRequest.title, description: createTodoRequest.description);
      final result = await _createTodo(params);

      return _successResponse(TodoDto.fromEntity(result).toTodoProto().writeToBuffer());
    } on Failure catch (e) {
      return _errorResponse(e.message, HttpStatus.internalServerError);
    } catch (e) {
      return _errorResponse('Invalid Protobuf format', HttpStatus.badRequest);
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
