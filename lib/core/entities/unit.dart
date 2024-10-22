import 'package:equatable/equatable.dart';

import 'lesson.dart';

class Unit extends Equatable {
  final String id;
  final List<Lesson> lessons;
  final List<Lesson> completedLessons;

  const Unit({
    required this.id,
    required this.lessons,
    required this.completedLessons,
  });

  double get progress => completedLessons.length / lessons.length;

  bool get isCompleted => progress == 1;

  @override
  List get props => [id, lessons];
}
