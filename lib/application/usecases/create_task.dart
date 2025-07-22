import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/usecases/usecase.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/i_task_repository.dart';

part 'create_task.freezed.dart';
part 'create_task.g.dart';

class CreateTask implements UseCase<Task, CreateTaskParams> {
  const CreateTask(this.repository);

  final ITaskRepository repository;

  @override
  Future<Task> call(CreateTaskParams params) async {
    final task = Task.create(title: params.title, description: params.description);

    return await repository.create(task);
  }
}

@freezed
abstract class CreateTaskParams with _$CreateTaskParams {
  const factory CreateTaskParams({required String title, required String description}) = _CreateTaskParams;

  factory CreateTaskParams.fromJson(Map<String, dynamic> json) => _$CreateTaskParamsFromJson(json);
}
