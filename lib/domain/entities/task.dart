import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
abstract class Task with _$Task {
  const Task._();

  const factory Task({
    int? id,
    required String title,
    required String description,
    @Default(false) bool isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.create({required String title, required String description}) {
    final now = DateTime.now();
    return Task(title: title, description: description, isCompleted: false, createdAt: now, updatedAt: now);
  }

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
