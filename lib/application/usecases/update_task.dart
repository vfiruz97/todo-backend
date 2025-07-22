import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/error/failures.dart';
import '../../core/usecases/usecase.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/i_task_repository.dart';

part 'update_task.freezed.dart';
part 'update_task.g.dart';

class UpdateTask implements UseCase<Task, UpdateTaskParams> {
  const UpdateTask(this.repository);

  final ITaskRepository repository;

  @override
  Future<Task> call(UpdateTaskParams params) async {
    if (params.id <= 0) {
      throw Failure.validation('Task ID must be a positive integer');
    }

    final existingTask = await repository.getById(params.id);
    if (existingTask == null) {
      throw Failure.notFound('Task with ID ${params.id} not found');
    }

    final updatedTask = existingTask.copyWith(
      title: params.title ?? existingTask.title,
      description: params.description ?? existingTask.description,
      isCompleted: params.isCompleted ?? existingTask.isCompleted,
      updatedAt: DateTime.now(),
    );

    return await repository.update(updatedTask);
  }
}

@freezed
abstract class UpdateTaskParams with _$UpdateTaskParams {
  const factory UpdateTaskParams({required int id, String? title, String? description, bool? isCompleted}) =
      _UpdateTaskParams;

  factory UpdateTaskParams.fromJson(Map<String, dynamic> json) => _$UpdateTaskParamsFromJson(json);
}
