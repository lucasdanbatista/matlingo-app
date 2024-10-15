import 'answer.dart';

class Lesson<T extends Answer> {
  final String question;
  final List<T> answers;

  Lesson({
    required this.question,
    required this.answers,
  });
}
