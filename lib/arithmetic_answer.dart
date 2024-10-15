import 'answer.dart';

class ArithmeticAnswer extends Answer {
  final String operand1;
  final String operand2;
  final String operator;

  ArithmeticAnswer({
    required this.operand1,
    required this.operand2,
    required this.operator,
  });
}
