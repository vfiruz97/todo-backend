import '../../core/usecases/usecase.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/i_task_repository.dart';

class GetAllTasks implements NoParamsUseCase<List<Task>> {
  const GetAllTasks(this.repository);

  final ITaskRepository repository;

  @override
  Future<List<Task>> call() async {
    return await repository.getAll();
  }
}
