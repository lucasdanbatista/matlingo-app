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
  List get props => [
        operand1,
        operator,
        operand2,
      ];
}
