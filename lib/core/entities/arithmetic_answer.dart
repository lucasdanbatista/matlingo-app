import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:math_expressions/math_expressions.dart';

part 'arithmetic_answer.g.dart';

@JsonSerializable()
class ArithmeticAnswer extends Equatable {
  final String operand1;
  final String operator;
  final String operand2;

  const ArithmeticAnswer({
    required this.operand1,
    required this.operator,
    required this.operand2,
  });

  factory ArithmeticAnswer.fromJson(Map<String, dynamic> json) {
    return _$ArithmeticAnswerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArithmeticAnswerToJson(this);

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
