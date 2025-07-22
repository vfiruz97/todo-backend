import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/update_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';
import '../../../utils/request_response_utils.dart';

@singleton
class UpdateTodoController {
  const UpdateTodoController({required UpdateTodo updateTodo}) : _updateTodo = updateTodo;

  final UpdateTodo _updateTodo;

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

      final updateTodoData = await RequestResponseUtils.parseRequest<UpdateTodoParams>(
        request,
        fromProtobuf: (bytes) {
          final proto = pt.UpdateTodoRequest.fromBuffer(bytes);
          return UpdateTodoParams(
            id: proto.hasId() ? proto.id : id,
            title: proto.hasTitle() ? proto.title : null,
            description: proto.hasDescription() ? proto.description : null,
            isCompleted: proto.hasIsCompleted() ? proto.isCompleted : null,
          );
        },
        fromJson: (json) => UpdateTodoParams.fromJson(json),
      );

      if (updateTodoData.title != null && updateTodoData.title!.isEmpty) {
        return RequestResponseUtils.errorResponse(request, 'Title cannot be empty', HttpStatus.badRequest);
      }

      final params = UpdateTodoParams(
        id: id,
        title: updateTodoData.title,
        description: updateTodoData.description,
        isCompleted: updateTodoData.isCompleted,
      );

      final result = await _updateTodo(params);
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
      return RequestResponseUtils.errorResponse(request, 'Invalid request format', HttpStatus.badRequest);
    }
  }
}
