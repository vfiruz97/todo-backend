/// Base class for all use cases
abstract class UseCase<T, P> {
  Future<T> call(P params);
}

/// Use case that doesn't require any parameters
abstract class NoParamsUseCase<T> {
  Future<T> call();
}
