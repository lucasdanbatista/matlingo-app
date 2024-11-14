import 'package:json_annotation/json_annotation.dart';

import 'arithmetic_lesson.dart';

part 'unit.g.dart';

@JsonSerializable(explicitToJson: true)
class Unit {
  final String id;
  final List<ArithmeticLesson> lessons;
  final List<ArithmeticLesson> completedLessons;

  factory Unit.fromJson(Map<String, dynamic> json) {
    return _$UnitFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UnitToJson(this);

  const Unit({
    required this.id,
    required this.lessons,
    required this.completedLessons,
  });

  int get nextUncompletedLessonIndex {
    if (completedLessons.isEmpty) return 0;
    final index = completedLessons.indexOf(completedLessons.last);
    return index + 1;
  }

  double get progress => completedLessons.length / lessons.length;

  bool get isCompleted => progress == 1;
}
