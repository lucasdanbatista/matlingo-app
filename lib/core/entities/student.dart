import 'package:json_annotation/json_annotation.dart';

import 'course.dart';

part 'student.g.dart';

@JsonSerializable(explicitToJson: true)
class Student {
  final String id;
  final List<Course> courses;

  const Student({
    required this.id,
    required this.courses,
  });

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentToJson(this);
}