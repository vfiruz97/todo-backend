import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/get_all_todos.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';

@singleton
class GetAllTodosController {
  final GetAllTodos _getAllTodos;

  const GetAllTodosController({required GetAllTodos getAllTodos}) : _getAllTodos = getAllTodos;

  Future<Response> handle(Request request) async {
    print('object');
    print('GetAllTodosController.handle called');
    try {
      final result = await _getAllTodos();
      final todos = result.map((todo) => TodoDto.fromEntity(todo).toTodoProto()).toList();
      final response = pt.ListTodosResponse(todos: todos);

      return _successResponse(response.writeToBuffer());
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
