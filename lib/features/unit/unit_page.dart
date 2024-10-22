import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/entities/arithmetic_lesson.dart';
import '../../core/entities/unit.dart';
import '../../utils/cron.dart';
import '../../utils/dependency_injection.dart';
import '../../widgets/arithmetic_lesson_content.dart';
import '../course/course_controller.dart';
import 'unit_controller.dart';

@RoutePage()
class UnitPage extends StatelessWidget {
  final Unit unit;
  final pageController = PageController();
  final controller = get<UnitController>();

  UnitPage({
    super.key,
    required this.unit,
  });

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
          if (lesson is ArithmeticLesson) {
            return ArithmeticLessonContent(
              lesson: lesson,
              onComplete: () {
                unit.completedLessons.add(lesson);
                controller.setProgress(unit.progress);
                if (controller.progress == 1) {
                  Navigator.pop(context);
                  get<CourseController>().refresh();
                } else {
                  pageController.nextPage(
                    duration: 600.milliseconds,
                    curve: Curves.ease,
                  );
                }
              },
            );
          }
          return const SizedBox.square();
        }).toList(),
      ),
    );
  }
}
