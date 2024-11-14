import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Course {
  final String id;
  final String title;
  final List<Unit> units;

  const Course({
    required this.id,
    required this.title,
    required this.units,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
