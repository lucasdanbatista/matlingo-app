import 'package:math_expressions/math_expressions.dart';

import 'answer.dart';

class ArithmeticAnswer extends Answer {
  final String operand1;
  final String operator;
  final String operand2;

  ArithmeticAnswer({
    required this.operand1,
    required this.operator,
    required this.operand2,
  });

  @override
  String toString() => '$operand1 $operator $operand2';

  double evaluate() => Parser().parse(toString()).evaluate(
        EvaluationType.REAL,
        ContextModel(),
      );

  @override
  List get props => [
        operand1,
        operator,
        operand2,
      ];
}
