import 'package:floor/floor.dart';

@entity
class Task {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String content;
  final bool isCompleted;

  Task({this.id, required this.content, this.isCompleted = false});

  Task copyWith({int? id, String? content, bool? isCompleted}) {
    return Task(
      id: id ?? this.id,
      content: content ?? this.content,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}