import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'arithmetic_lesson.dart';

part 'unit.g.dart';

@JsonSerializable(explicitToJson: true)
class Unit extends Equatable {
  final String id;
  final List<ArithmeticLesson> lessons;
  final List<ArithmeticLesson> completedLessons;
  bool alreadyCompleted;

  factory Unit.fromJson(Map<String, dynamic> json) {
    return _$UnitFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UnitToJson(this);

  Unit({
    required this.id,
    required this.lessons,
    required this.completedLessons,
    this.alreadyCompleted = false,
  });

  int get initialLessonIndex {
    if (completedLessons.isEmpty) return 0;
    if (completedLessons.length == lessons.length) return 0;
    final index = completedLessons.indexOf(completedLessons.last);
    if (index == lessons.length - 1) return index;
    return index + 1;
  }

  double get progress => completedLessons.length / lessons.length;

  bool get isCompleted => progress == 1;

  @override
  List<Object?> get props => [id];
}
