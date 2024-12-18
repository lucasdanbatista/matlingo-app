import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/entities/course.dart';
import '../../core/entities/unit.dart';
import '../../utils/cron.dart';
import '../../utils/dependency_injection.dart';
import '../../widgets/arithmetic_lesson_content.dart';
import '../course/course_controller.dart';
import 'unit_controller.dart';

@RoutePage()
class UnitPage extends StatelessWidget {
  final Course course;
  final Unit unit;
  late final pageController = PageController(
    initialPage: unit.initialLessonIndex,
  );
  final controller = get<UnitController>();

  UnitPage({
    super.key,
    required this.course,
    required this.unit,
  }) {
    _fetchProgress();
  }

  Future<void> _fetchProgress() async {
    if (unit.alreadyCompleted) {
      await controller.resetUnit(course, unit);
    } else {
      controller.setProgress(unit.progress);
    }
    await get<CourseController>().fetchUnits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: Observer(
          builder: (context) => LinearProgressIndicator(
            value: controller.progress,
            minHeight: 8,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: unit.lessons.map((lesson) {
          return ArithmeticLessonContent(
            lesson: lesson,
            onComplete: () async {
              await controller.completeLesson(course, unit, lesson);
              await get<CourseController>().fetchUnits();
              if (controller.progress == 1) {
                if (context.mounted) {
                  Navigator.pop(context);
                }
              } else {
                pageController.nextPage(
                  duration: 600.milliseconds,
                  curve: Curves.ease,
                );
              }
            },
          );
        }).toList(),
      ),
    );
  }
}
