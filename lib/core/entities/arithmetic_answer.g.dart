// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arithmetic_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArithmeticAnswer _$ArithmeticAnswerFromJson(Map<String, dynamic> json) =>
    ArithmeticAnswer(
      operand1: json['operand1'] as String,
      operator: json['operator'] as String,
      operand2: json['operand2'] as String,
    );

Map<String, dynamic> _$ArithmeticAnswerToJson(ArithmeticAnswer instance) =>
    <String, dynamic>{
      'operand1': instance.operand1,
      'operator': instance.operator,
      'operand2': instance.operand2,
    };
