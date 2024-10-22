import 'package:math_expressions/math_expressions.dart';

import 'arithmetic_answer.dart';
import 'lesson.dart';

class ArithmeticLesson extends Lesson {
  final String question;
  final List<ArithmeticAnswer> answers;

  List<ArithmeticAnswer> get correctAnswers {
    return answers
        .where(
          (answer) =>
              Parser().parse(answer.toString()).evaluate(
                    EvaluationType.REAL,
                    ContextModel(),
                  ) ==
              double.parse(question),
        )
        .toList();
  }

  ArithmeticLesson({
    required this.question,
    required this.answers,
  });

  @override
  bool isAnswersCorrect(covariant List<ArithmeticAnswer> answers) {
    if (correctAnswers.length != answers.length) return false;
    for (final answer in answers) {
      if (double.parse(question) != answer.evaluate()) {
        return false;
      }
    }
    return true;
  }

  @override
  List get props => [
        question,
        answers,
        correctAnswers,
      ];
}
