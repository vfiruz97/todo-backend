import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';
part 'failures.g.dart';

/// Base failure types using Freezed union types for better type safety
@freezed
abstract class Failure with _$Failure {
  const factory Failure.database(String message, {@Default(500) int code}) = DatabaseFailure;
  const factory Failure.validation(String message, {@Default(400) int code}) = ValidationFailure;
  const factory Failure.notFound(String message, {@Default(404) int code}) = NotFoundFailure;
  const factory Failure.server(String message, {@Default(500) int code}) = ServerFailure;
  const factory Failure.network(String message, {@Default(503) int code}) = NetworkFailure;
  const factory Failure.permission(String message, {@Default(403) int code}) = PermissionFailure;
  const factory Failure.unexpected(String message, {@Default(500) int code}) = UnexpectedFailure;

  factory Failure.fromJson(Map<String, dynamic> json) => _$FailureFromJson(json);
}
