// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Unit _$UnitFromJson(Map<String, dynamic> json) => Unit(
      id: json['id'] as String,
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => ArithmeticLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      completedLessons: (json['completedLessons'] as List<dynamic>)
          .map((e) => ArithmeticLesson.fromJson(e as Map<String, dynamic>))
          .toList(),
      alreadyCompleted: json['alreadyCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$UnitToJson(Unit instance) => <String, dynamic>{
      'id': instance.id,
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
      'completedLessons':
          instance.completedLessons.map((e) => e.toJson()).toList(),
      'alreadyCompleted': instance.alreadyCompleted,
    };
