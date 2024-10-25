// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arithmetic_lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArithmeticLesson _$ArithmeticLessonFromJson(Map<String, dynamic> json) =>
    ArithmeticLesson(
      question: json['question'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => ArithmeticAnswer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArithmeticLessonToJson(ArithmeticLesson instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
    };
