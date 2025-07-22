import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/get_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';

@singleton
class GetTodoController {
  final GetTodo _getTodo;

  const GetTodoController({required GetTodo getTodo}) : _getTodo = getTodo;

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

      final params = GetTodoParams(id: id);
      final result = await _getTodo(params);

      if (result == null) {
        return _errorResponse('Todo not found', HttpStatus.notFound);
      }

      return _successResponse(TodoDto.fromEntity(result).toTodoProto().writeToBuffer());
    } on Failure catch (e) {
      return _errorResponse(e.message, HttpStatus.internalServerError);
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
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
