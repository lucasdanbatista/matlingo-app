import 'package:equatable/equatable.dart';

import 'arithmetic_answer.dart';
import 'arithmetic_lesson.dart';
import 'lesson.dart';

class Unit extends Equatable {
  final List<Lesson> lessons;

  const Unit({required this.lessons});

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
        ArithmeticLesson(
          question: '100',
          correctAnswers: [
            ArithmeticAnswer(
              operand1: '10',
              operator: '*',
              operand2: '10',
            ),
            ArithmeticAnswer(
              operand1: '101',
              operator: '-',
              operand2: '1',
            ),
            ArithmeticAnswer(
              operand1: '50',
              operator: '+',
              operand2: '50',
            ),
          ],
          answers: [
            ArithmeticAnswer(
              operand1: '101',
              operator: '-',
              operand2: '1',
            ),
            ArithmeticAnswer(
              operand1: '50',
              operator: '+',
              operand2: '50',
            ),
            ArithmeticAnswer(
              operand1: '1',
              operator: '-',
              operand2: '101',
            ),
            ArithmeticAnswer(
              operand1: '10',
              operator: '*',
              operand2: '10',
            ),
          ],
        ),
        ArithmeticLesson(
          question: '32',
          correctAnswers: [
            ArithmeticAnswer(
              operand1: '16',
              operator: '*',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '128',
              operator: '/',
              operand2: '4',
            ),
            ArithmeticAnswer(
              operand1: '48',
              operator: '-',
              operand2: '16',
            ),
          ],
          answers: [
            ArithmeticAnswer(
              operand1: '16',
              operator: '*',
              operand2: '2',
            ),
            ArithmeticAnswer(
              operand1: '32',
              operator: '-',
              operand2: '36',
            ),
            ArithmeticAnswer(
              operand1: '128',
              operator: '/',
              operand2: '4',
            ),
            ArithmeticAnswer(
              operand1: '48',
              operator: '-',
              operand2: '16',
            ),
          ],
        ),
        ArithmeticLesson(
          question: '0',
          correctAnswers: [
            ArithmeticAnswer(
              operand1: '0',
              operator: '+',
              operand2: '0',
            ),
            ArithmeticAnswer(
              operand1: '1000',
              operator: '*',
              operand2: '0',
            ),
            ArithmeticAnswer(
              operand1: '1',
              operator: '-',
              operand2: '1',
            ),
            ArithmeticAnswer(
              operand1: '0',
              operator: '/',
              operand2: '1',
            ),
          ],
          answers: [
            ArithmeticAnswer(
              operand1: '0',
              operator: '+',
              operand2: '0',
            ),
            ArithmeticAnswer(
              operand1: '1000',
              operator: '*',
              operand2: '0',
            ),
            ArithmeticAnswer(
              operand1: '1',
              operator: '-',
              operand2: '1',
            ),
            ArithmeticAnswer(
              operand1: '0',
              operator: '/',
              operand2: '1',
            ),
          ],
        ),
      ],
    );
  }

  @override
  List get props => [lessons];
}
