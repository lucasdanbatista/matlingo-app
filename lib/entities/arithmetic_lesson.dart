import 'arithmetic_answer.dart';
import 'lesson.dart';

class ArithmeticLesson extends Lesson {
  final String question;
  final List<ArithmeticAnswer> answers;
  final List<ArithmeticAnswer> correctAnswers;

  ArithmeticLesson({
    required this.question,
    required this.answers,
    required this.correctAnswers,
  });

  @override
  bool isAnswersCorrect(covariant List<ArithmeticAnswer> answers) {
    if (correctAnswers.length != answers.length) return false;
    for (final correctAnswer in correctAnswers) {
      if (!answers.contains(correctAnswer)) {
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
