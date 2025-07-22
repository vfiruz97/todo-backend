import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/get_all_todos.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';
import '../../../utils/request_response_utils.dart';

@singleton
class GetAllTodosController {
  final GetAllTodos _getAllTodos;

  const GetAllTodosController({required GetAllTodos getAllTodos}) : _getAllTodos = getAllTodos;

  Future<Response> handle(Request request) async {
    try {
      final result = await _getAllTodos();
      final todoDtos = result.map((todo) => TodoDto.fromEntity(todo)).toList();

      return RequestResponseUtils.successResponse(
        request,
        todoDtos,
        toProtobuf: () {
          final todos = todoDtos.map((dto) => dto.toTodoProto()).toList();
          final response = pt.ListTodosResponse(todos: todos);
          return response.writeToBuffer();
        },
        toJson: () => {'todos': todoDtos.map((dto) => dto.toJson()).toList()},
      );
    } on Failure catch (e) {
      return RequestResponseUtils.errorResponse(request, e.message, HttpStatus.internalServerError);
    } catch (e) {
      return RequestResponseUtils.errorResponse(request, 'Internal server error', HttpStatus.internalServerError);
    }
  }
}
