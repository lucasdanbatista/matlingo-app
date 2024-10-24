import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:math_expressions/math_expressions.dart';

import 'arithmetic_answer.dart';

part 'arithmetic_lesson.g.dart';

@JsonSerializable()
class ArithmeticLesson extends Equatable {
  final String question;
  final List<ArithmeticAnswer> answers;

  factory ArithmeticLesson.fromJson(Map<String, dynamic> json) {
    return _$ArithmeticLessonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArithmeticLessonToJson(this);

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

  const ArithmeticLesson({
    required this.question,
    required this.answers,
  });

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
