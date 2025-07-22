import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../application/usecases/create_todo.dart';
import '../../application/usecases/delete_todo.dart';
import '../../application/usecases/get_all_todos.dart';
import '../../application/usecases/get_todo.dart';
import '../../application/usecases/update_todo.dart';
import '../../core/error/failures.dart';
import '../../infrastructure/dtos/todo_dto.dart';

@singleton
class TodoController {
  final CreateTodo _createTodo;
  final GetTodo _getTodo;
  final GetAllTodos _getAllTodos;
  final UpdateTodo _updateTodo;
  final DeleteTodo _deleteTodo;

  const TodoController({
    required CreateTodo createTodo,
    required GetTodo getTodo,
    required GetAllTodos getAllTodos,
    required UpdateTodo updateTodo,
    required DeleteTodo deleteTodo,
  }) : _createTodo = createTodo,
       _getTodo = getTodo,
       _getAllTodos = getAllTodos,
       _updateTodo = updateTodo,
       _deleteTodo = deleteTodo;

  Future<Response> create(Request request) async {
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

  Future<Response> getById(Request request) async {
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

  Future<Response> getAll(Request request) async {
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

  Future<Response> update(Request request) async {
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

  Future<Response> delete(Request request) async {
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

  Response _successResponse(List<int> body, [int statusCode = HttpStatus.ok]) {
    return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: body);
  }

  Response _errorResponse(String message, int statusCode) {
    final errorResponse = pt.ErrorResponse(message: message, code: statusCode);
    return Response(statusCode, headers: {'Content-Type': 'application/protobuf'}, body: errorResponse.writeToBuffer());
  }
}
