import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../application/usecases/create_task.dart';
import '../../application/usecases/delete_task.dart';
import '../../application/usecases/get_all_tasks.dart';
import '../../application/usecases/get_task.dart';
import '../../application/usecases/update_task.dart';
import '../../infrastructure/dtos/task_dto.dart';

class TaskController {
  final CreateTask _createTask;
  final GetTask _getTask;
  final GetAllTasks _getAllTasks;
  final UpdateTask _updateTask;
  final DeleteTask _deleteTask;

  const TaskController({
    required CreateTask createTask,
    required GetTask getTask,
    required GetAllTasks getAllTasks,
    required UpdateTask updateTask,
    required DeleteTask deleteTask,
  }) : _createTask = createTask,
       _getTask = getTask,
       _getAllTasks = getAllTasks,
       _updateTask = updateTask,
       _deleteTask = deleteTask;

  Future<Response> create(Request request) async {
    try {
      final body = await request.readAsString();
      final data = jsonDecode(body) as Map<String, dynamic>;

      final title = data['title'] as String?;
      final description = data['description'] as String?;

      if (title == null || description == null) {
        return _errorResponse('Title and description are required', HttpStatus.badRequest);
      }

      final params = CreateTaskParams(title: title, description: description);
      final result = await _createTask(params);

      return _successResponse(TaskDto.fromEntity(result).toJson(), HttpStatus.created);
    } catch (e) {
      return _errorResponse('Invalid JSON format', HttpStatus.badRequest);
    }
  }

  Future<Response> getById(Request request) async {
    try {
      final idString = request.params['id'];
      if (idString == null) {
        return _errorResponse('Task ID is required', HttpStatus.badRequest);
      }

      final id = int.tryParse(idString);
      if (id == null) {
        return _errorResponse('Invalid task ID format', HttpStatus.badRequest);
      }

      final params = GetTaskParams(id: id);
      final result = await _getTask(params);

      if (result == null) {
        return _errorResponse('Task not found', HttpStatus.notFound);
      }

      return _successResponse(TaskDto.fromEntity(result).toJson());
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
    }
  }

  Future<Response> getAll(Request request) async {
    try {
      final result = await _getAllTasks();

      return _successResponse({'tasks': result.map((task) => TaskDto.fromEntity(task).toJson()).toList()});
    } catch (e) {
      return _errorResponse('Internal server error', HttpStatus.internalServerError);
    }
  }

  Future<Response> update(Request request) async {
    try {
      final idString = request.params['id'];
      if (idString == null) {
        return _errorResponse('Task ID is required', HttpStatus.badRequest);
      }

      final id = int.tryParse(idString);
      if (id == null) {
        return _errorResponse('Invalid task ID format', HttpStatus.badRequest);
      }

      final body = await request.readAsString();
      final data = jsonDecode(body) as Map<String, dynamic>;

      final params = UpdateTaskParams(
        id: id,
        title: data['title'] as String?,
        description: data['description'] as String?,
        isCompleted: data['isCompleted'] as bool?,
      );

      final result = await _updateTask(params);

      return _successResponse(TaskDto.fromEntity(result).toJson());
    } catch (e) {
      return _errorResponse('Invalid JSON format or internal server error', HttpStatus.badRequest);
    }
  }

  Future<Response> delete(Request request) async {
    try {
      final idString = request.params['id'];
      if (idString == null) {
        return _errorResponse('Task ID is required', HttpStatus.badRequest);
      }

      final id = int.tryParse(idString);
      if (id == null) {
        return _errorResponse('Invalid task ID format', HttpStatus.badRequest);
      }

      final params = DeleteTaskParams(id: id);
      await _deleteTask(params);

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
