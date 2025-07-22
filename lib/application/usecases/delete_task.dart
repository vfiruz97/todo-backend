import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../../domain/repositories/i_task_repository.dart';

part 'delete_task.freezed.dart';
part 'delete_task.g.dart';

class DeleteTask implements UseCase<void, DeleteTaskParams> {
  const DeleteTask(this.repository);

  final ITaskRepository repository;

  @override
  Future<void> call(DeleteTaskParams params) async {
    if (params.id <= 0) {
      throw Failure.validation('Task ID must be a positive integer');
    }

    return await repository.delete(params.id);
  }
}

@freezed
abstract class DeleteTaskParams with _$DeleteTaskParams {
  const factory DeleteTaskParams({required int id}) = _DeleteTaskParams;

  factory DeleteTaskParams.fromJson(Map<String, dynamic> json) => _$DeleteTaskParamsFromJson(json);
}
