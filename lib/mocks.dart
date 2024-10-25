import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

import 'core/entities/arithmetic_answer.dart';
import 'core/entities/arithmetic_lesson.dart';
import 'core/entities/course.dart';
import 'core/entities/unit.dart';

Future<Course> mockBasicMathCourse() async {
  final course = Course(
    id: 'basic-math',
    units: [
      Unit(
        id: const Uuid().v4(),
        lessons: const [
          ArithmeticLesson(
            question: '-1',
            answers: [
              ArithmeticAnswer(
                operand1: '1',
                operator: '-',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '2',
                operator: '+',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '1',
                operator: '*',
                operand2: '-1',
              ),
              ArithmeticAnswer(
                operand1: '0',
                operator: '/',
                operand2: '1',
              ),
            ],
          ),
          ArithmeticLesson(
            question: '3',
            answers: [
              ArithmeticAnswer(
                operand1: '1',
                operator: '+',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '6',
                operator: '-',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '9',
                operator: '/',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '2',
                operator: '*',
                operand2: '2',
              ),
            ],
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: const [
          ArithmeticLesson(
            question: '5',
            answers: [
              ArithmeticAnswer(
                operand1: '2',
                operator: '+',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '6',
                operator: '-',
                operand2: '1',
              ),
              ArithmeticAnswer(
                operand1: '2',
                operator: '*',
                operand2: '3',
              ),
            ],
          ),
          ArithmeticLesson(
            question: '6',
            answers: [
              ArithmeticAnswer(
                operand1: '3',
                operator: '*',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '12',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '4',
                operator: '+',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '9',
                operator: '-',
                operand2: '3',
              ),
            ],
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: const [
          ArithmeticLesson(
            question: '4',
            answers: [
              ArithmeticAnswer(
                operand1: '2',
                operator: '+',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '8',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '16',
                operator: '/',
                operand2: '4',
              ),
              ArithmeticAnswer(
                operand1: '5',
                operator: '-',
                operand2: '1',
              ),
            ],
          ),
          ArithmeticLesson(
            question: '0',
            answers: [
              ArithmeticAnswer(
                operand1: '1',
                operator: '-',
                operand2: '1',
              ),
              ArithmeticAnswer(
                operand1: '2',
                operator: '*',
                operand2: '0',
              ),
              ArithmeticAnswer(
                operand1: '5',
                operator: '-',
                operand2: '5',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '/',
                operand2: '10',
              ),
            ],
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: const [
          ArithmeticLesson(
            question: '10',
            answers: [
              ArithmeticAnswer(
                operand1: '5',
                operator: '+',
                operand2: '5',
              ),
              ArithmeticAnswer(
                operand1: '20',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '8',
                operator: '+',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '4',
                operator: '*',
                operand2: '3',
              ),
            ],
          ),
          ArithmeticLesson(
            question: '7',
            answers: [
              ArithmeticAnswer(
                operand1: '5',
                operator: '+',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '14',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '6',
                operator: '+',
                operand2: '1',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '-',
                operand2: '3',
              ),
            ],
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: const [
          ArithmeticLesson(
            question: '8',
            answers: [
              ArithmeticAnswer(
                operand1: '4',
                operator: '+',
                operand2: '4',
              ),
              ArithmeticAnswer(
                operand1: '16',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '-',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '3',
                operator: '*',
                operand2: '3',
              ),
            ],
          ),
          ArithmeticLesson(
            question: '12',
            answers: [
              ArithmeticAnswer(
                operand1: '6',
                operator: '+',
                operand2: '6',
              ),
              ArithmeticAnswer(
                operand1: '24',
                operator: '/',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '15',
                operator: '-',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '5',
                operator: '*',
                operand2: '2',
              ),
            ],
          ),
        ],
        completedLessons: List.of([]),
      ),
    ],
  );
  await FirebaseFirestore.instance
      .doc('courses/basic-math')
      .set(course.toJson());
  return course;
}
