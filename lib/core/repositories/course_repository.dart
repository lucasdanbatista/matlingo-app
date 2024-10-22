import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../entities/arithmetic_answer.dart';
import '../entities/arithmetic_lesson.dart';
import '../entities/unit.dart';

abstract interface class CourseRepository {
  Future<List<Unit>> findUnits();
}

@LazySingleton(as: CourseRepository)
class MockedCourseRepository implements CourseRepository {
  @override
  Future<List<Unit>> findUnits() async {
    return [
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '10',
            answers: [
              _generateRandomAnswer(),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '5',
                operator: '+',
                operand2: '5',
              ),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '32',
            answers: [
              _generateRandomAnswer(),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '16',
                operator: '+',
                operand2: '16',
              ),
              ArithmeticAnswer(
                operand1: '48',
                operator: '-',
                operand2: '16',
              ),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '0',
            answers: [
              ArithmeticAnswer(
                operand1: '0',
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
              ArithmeticAnswer(
                operand1: '0',
                operator: '+',
                operand2: '0',
              ),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '15',
            answers: [
              _generateRandomAnswer(),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '10',
                operator: '+',
                operand2: '5',
              ),
              ArithmeticAnswer(
                operand1: '20',
                operator: '-',
                operand2: '5',
              ),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '24',
            answers: [
              ArithmeticAnswer(
                operand1: '12',
                operator: '+',
                operand2: '12',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '30',
                operator: '-',
                operand2: '6',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '100',
            answers: [
              ArithmeticAnswer(
                operand1: '50',
                operator: '+',
                operand2: '50',
              ),
              ArithmeticAnswer(
                operand1: '200',
                operator: '-',
                operand2: '100',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '36',
            answers: [
              ArithmeticAnswer(
                operand1: '6',
                operator: '*',
                operand2: '6',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '72',
                operator: '/',
                operand2: '2',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '81',
            answers: [
              ArithmeticAnswer(
                operand1: '9',
                operator: '*',
                operand2: '9',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '90',
                operator: '-',
                operand2: '9',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '50',
            answers: [
              ArithmeticAnswer(
                operand1: '25',
                operator: '+',
                operand2: '25',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '100',
                operator: '-',
                operand2: '50',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '49',
            answers: [
              ArithmeticAnswer(
                operand1: '7',
                operator: '*',
                operand2: '7',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '50',
                operator: '-',
                operand2: '1',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '64',
            answers: [
              ArithmeticAnswer(
                operand1: '8',
                operator: '*',
                operand2: '8',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '80',
                operator: '-',
                operand2: '16',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '12',
            answers: [
              ArithmeticAnswer(
                operand1: '6',
                operator: '*',
                operand2: '2',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '+',
                operand2: '2',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '144',
            answers: [
              ArithmeticAnswer(
                operand1: '12',
                operator: '*',
                operand2: '12',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '150',
                operator: '-',
                operand2: '6',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '20',
            answers: [
              ArithmeticAnswer(
                operand1: '10',
                operator: '+',
                operand2: '10',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '40',
                operator: '-',
                operand2: '20',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '75',
            answers: [
              ArithmeticAnswer(
                operand1: '25',
                operator: '*',
                operand2: '3',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '80',
                operator: '-',
                operand2: '5',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '9',
            answers: [
              ArithmeticAnswer(
                operand1: '3',
                operator: '*',
                operand2: '3',
              ),
              ArithmeticAnswer(
                operand1: '10',
                operator: '-',
                operand2: '1',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '28',
            answers: [
              ArithmeticAnswer(
                operand1: '14',
                operator: '+',
                operand2: '14',
              ),
              ArithmeticAnswer(
                operand1: '56',
                operator: '-',
                operand2: '28',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '100',
            answers: [
              ArithmeticAnswer(
                operand1: '50',
                operator: '+',
                operand2: '50',
              ),
              ArithmeticAnswer(
                operand1: '200',
                operator: '-',
                operand2: '100',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '25',
            answers: [
              ArithmeticAnswer(
                operand1: '5',
                operator: '*',
                operand2: '5',
              ),
              ArithmeticAnswer(
                operand1: '30',
                operator: '-',
                operand2: '5',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '50',
            answers: [
              ArithmeticAnswer(
                operand1: '25',
                operator: '+',
                operand2: '25',
              ),
              ArithmeticAnswer(
                operand1: '60',
                operator: '-',
                operand2: '10',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '99',
            answers: [
              ArithmeticAnswer(
                operand1: '33',
                operator: '*',
                operand2: '3',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '100',
                operator: '-',
                operand2: '1',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
      Unit(
        id: const Uuid().v4(),
        lessons: [
          ArithmeticLesson(
            question: '121',
            answers: [
              ArithmeticAnswer(
                operand1: '11',
                operator: '*',
                operand2: '11',
              ),
              _generateRandomAnswer(),
              ArithmeticAnswer(
                operand1: '130',
                operator: '-',
                operand2: '9',
              ),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '72',
            answers: [
              ArithmeticAnswer(
                operand1: '36',
                operator: '+',
                operand2: '36',
              ),
              ArithmeticAnswer(
                operand1: '100',
                operator: '-',
                operand2: '28',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
          ArithmeticLesson(
            question: '200',
            answers: [
              ArithmeticAnswer(
                operand1: '100',
                operator: '+',
                operand2: '100',
              ),
              ArithmeticAnswer(
                operand1: '300',
                operator: '-',
                operand2: '100',
              ),
              _generateRandomAnswer(),
              _generateRandomAnswer(),
            ]..shuffle(),
          ),
        ],
        completedLessons: List.of([]),
      ),
    ];
  }

  ArithmeticAnswer _generateRandomAnswer() {
    final operators = ['+', '-', '*', '/', '^'];
    operators.shuffle();
    return ArithmeticAnswer(
      operand1: faker.randomGenerator.integer(99).toString(),
      operator: operators.first,
      operand2: faker.randomGenerator.integer(99).toString(),
    );
  }
}
