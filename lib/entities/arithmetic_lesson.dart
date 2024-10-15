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
  List<Object?> get props => [
        question,
        answers,
        correctAnswers,
      ];
}
