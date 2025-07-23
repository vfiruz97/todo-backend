import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../application/usecases/delete_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../utils/request_response_utils.dart';

@singleton
class DeleteTodoController {
  const DeleteTodoController({required DeleteTodo deleteTodo}) : _deleteTodo = deleteTodo;

  final DeleteTodo _deleteTodo;

  Future<Response> handle(Request request) async {
    try {
      final idString = request.params['id'];
      final params = DeleteTodoParams(id: idString);
      await _deleteTodo(params);

      return Response(HttpStatus.noContent);
    } on Failure catch (e) {
      return RequestResponseUtils.errorResponse(request, e.message, e.code);
    } catch (e) {
      return RequestResponseUtils.errorResponse(request, 'Internal server error', HttpStatus.internalServerError);
    }
  }
}
