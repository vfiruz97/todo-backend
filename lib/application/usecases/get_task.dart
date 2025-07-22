import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/i_task_repository.dart';

part 'get_task.freezed.dart';
part 'get_task.g.dart';

class GetTask implements UseCase<Task?, GetTaskParams> {
  const GetTask(this.repository);

  final ITaskRepository repository;

  @override
  Future<Task?> call(GetTaskParams params) async {
    if (params.id <= 0) {
      throw Failure.validation('Task ID must be a positive integer');
    }

    return await repository.getById(params.id);
  }
}

@freezed
abstract class GetTaskParams with _$GetTaskParams {
  const factory GetTaskParams({required int id}) = _GetTaskParams;

  factory GetTaskParams.fromJson(Map<String, dynamic> json) => _$GetTaskParamsFromJson(json);
}
