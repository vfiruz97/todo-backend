import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../application/usecases/get_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';
import '../../../utils/request_response_utils.dart';

@singleton
class GetTodoController {
  const GetTodoController({required GetTodo getTodo}) : _getTodo = getTodo;

  final GetTodo _getTodo;

  Future<Response> handle(Request request) async {
    try {
      final idString = request.params['id'];
      if (idString == null) {
        return RequestResponseUtils.errorResponse(request, 'Todo ID is required', HttpStatus.badRequest);
      }

      final id = int.tryParse(idString);
      if (id == null) {
        return RequestResponseUtils.errorResponse(request, 'Invalid todo ID format', HttpStatus.badRequest);
      }

      final params = GetTodoParams(id: id);
      final result = await _getTodo(params);

      if (result == null) {
        return RequestResponseUtils.errorResponse(request, 'Todo not found', HttpStatus.notFound);
      }

      final todoDto = TodoDto.fromEntity(result);
      return RequestResponseUtils.successResponse(
        request,
        todoDto,
        toProtobuf: () => todoDto.toTodoProto().writeToBuffer(),
        toJson: () => todoDto.toJson(),
      );
    } on Failure catch (e) {
      return RequestResponseUtils.errorResponse(request, e.message, HttpStatus.internalServerError);
    } catch (e) {
      return RequestResponseUtils.errorResponse(request, 'Internal server error', HttpStatus.internalServerError);
    }
  }
}
