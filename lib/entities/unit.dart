import 'arithmetic_answer.dart';
import 'arithmetic_lesson.dart';
import 'lesson.dart';

class Unit {
  final List<Lesson> lessons;

  Unit({
    required this.lessons,
  });

  factory Unit.mock() {
    return Unit(
      lessons: [
        ArithmeticLesson(
          question: '6',
          correctAnswers: [
            ArithmeticAnswer(
              operand1: '2',
              operator: '*',
              operand2: '3',
            ),
          ],
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
        ArithmeticLesson(
          question: '12',
          correctAnswers: [
            ArithmeticAnswer(
              operand1: '24',
              operator: '/',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '16',
              operator: '-',
              operand2: '4',
            ),
          ],
          answers: [
            ArithmeticAnswer(
              operand1: '1',
              operator: '*',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '24',
              operator: '/',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '16',
              operator: '-',
              operand2: '4',
            ),
            ArithmeticAnswer(
              operand1: '20',
              operator: '+',
              operand2: '8',
            ),
          ],
        ),
      ],
    );
  }
}
