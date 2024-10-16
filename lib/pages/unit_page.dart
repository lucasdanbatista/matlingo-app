import 'package:flutter/material.dart';

import '../entities/arithmetic_lesson.dart';
import '../entities/lesson.dart';
import '../entities/unit.dart';
import '../utils/cron.dart';
import '../widgets/arithmetic_lesson_content.dart';

class UnitPage extends StatefulWidget {
  final Unit unit;

  const UnitPage({
    super.key,
    required this.unit,
  });

  @override
  State<UnitPage> createState() => _UnitPageState();
}

class _UnitPageState extends State<UnitPage> {
  final completedLessons = <Lesson>[];
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => throw UnimplementedError(),
          icon: const Icon(Icons.close),
        ),
        title: LinearProgressIndicator(
          value: completedLessons.length / widget.unit.lessons.length,
          minHeight: 8,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: widget.unit.lessons.map((lesson) {
          if (lesson is ArithmeticLesson) {
            return ArithmeticLessonContent(
              lesson: lesson,
              onComplete: () {
                setState(() {
                  completedLessons.add(lesson);
                });
                pageController.nextPage(
                  duration: 600.milliseconds,
                  curve: Curves.ease,
                );
              },
            );
          }
          return const SizedBox.square();
        }).toList(),
      ),
    );
  }
}
