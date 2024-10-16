import 'package:equatable/equatable.dart';

import 'answer.dart';

abstract class Lesson extends Equatable {
  bool isAnswersCorrect(List<Answer> answers);
}
