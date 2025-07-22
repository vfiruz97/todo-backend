import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../application/usecases/create_todo.dart';
import '../../application/usecases/delete_todo.dart';
import '../../application/usecases/get_all_todos.dart';
import '../../application/usecases/get_todo.dart';
import '../../application/usecases/update_todo.dart';
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
      final body = await request.readAsString();
      final data = jsonDecode(body) as Map<String, dynamic>;

      final title = data['title'] as String?;
      final description = data['description'] as String?;

      if (title == null || description == null) {
        return _errorResponse('Title and description are required', HttpStatus.badRequest);
      }

      final params = CreateTodoParams(title: title, description: description);
      final result = await _createTodo(params);

      return _successResponse(TodoDto.fromEntity(result).toJson(), HttpStatus.created);
    } catch (e) {
      return _errorResponse('Invalid JSON format', HttpStatus.badRequest);
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

      return _successResponse(TodoDto.fromEntity(result).toJson());
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
    }
  }

  Future<Response> getAll(Request request) async {
    try {
      final result = await _getAllTodos();

      return _successResponse({'todos': result.map((todo) => TodoDto.fromEntity(todo).toJson()).toList()});
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

      final body = await request.readAsString();
      final data = jsonDecode(body) as Map<String, dynamic>;

      final params = UpdateTodoParams(
        id: id,
        title: data['title'] as String?,
        description: data['description'] as String?,
        isCompleted: data['isCompleted'] as bool?,
      );

      final result = await _updateTodo(params);

      return _successResponse(TodoDto.fromEntity(result).toJson());
    } catch (e) {
      return _errorResponse('Invalid JSON format or internal server error', HttpStatus.badRequest);
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
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
    }
  }

  Response _successResponse(Map<String, dynamic> data, [int statusCode = HttpStatus.ok]) {
    return Response(statusCode, headers: {'Content-Type': 'application/json'}, body: jsonEncode(data));
  }

  Response _errorResponse(String message, int statusCode) {
    return Response(
      statusCode,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'error': {'message': message, 'code': statusCode},
      }),
    );
  }
}
