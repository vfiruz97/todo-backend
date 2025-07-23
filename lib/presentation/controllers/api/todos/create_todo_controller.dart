import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:todo_proto/todo_proto.dart' as pt;

import '../../../../application/usecases/create_todo.dart';
import '../../../../core/error/failures.dart';
import '../../../../infrastructure/dtos/todo_dto.dart';
import '../../../utils/request_response_utils.dart';

@singleton
class CreateTodoController {
  const CreateTodoController({required CreateTodo createTodo}) : _createTodo = createTodo;

  final CreateTodo _createTodo;

  Future<Response> handle(Request request) async {
    try {
      final createTodoParams = await RequestResponseUtils.parseRequest<CreateTodoParams>(
        request,
        fromProtobuf: (bytes) {
          final proto = pt.CreateTodoRequest.fromBuffer(bytes);
          return CreateTodoParams(title: proto.title, description: proto.description);
        },
        fromJson: (json) => CreateTodoParams.fromJson(json),
      );

      final result = await _createTodo(createTodoParams);
      final todoDto = TodoDto.fromEntity(result);

      return RequestResponseUtils.successResponse(
        request,
        todoDto,
        toProtobuf: () => todoDto.toTodoProto().writeToBuffer(),
        toJson: () => todoDto.toJson(),
      );
    } on Failure catch (e) {
      return RequestResponseUtils.errorResponse(request, e.message, e.code);
    } catch (e) {
      return RequestResponseUtils.errorResponse(request, 'Invalid request format', HttpStatus.badRequest);
    }
  }
}
