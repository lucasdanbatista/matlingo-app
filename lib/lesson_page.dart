import 'package:flutter/material.dart';

import 'arithmetic_answer.dart';
import 'arithmetic_lesson_content.dart';
import 'lesson.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: const LinearProgressIndicator(
          value: 0.75,
          minHeight: 8,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      body: ArithmeticLessonContent(
        lesson: Lesson<ArithmeticAnswer>(
          question: '6',
          answers: [
            ArithmeticAnswer(
              operand1: '1',
              operator: '/',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '2',
              operator: '*',
              operand2: '3',
            ),
            ArithmeticAnswer(
              operand1: '4',
              operator: '-',
              operand2: '5',
            ),
            ArithmeticAnswer(
              operand1: '6',
              operator: '+',
              operand2: '7',
            ),
          ],
        ),
      ),
    );
  }
}
