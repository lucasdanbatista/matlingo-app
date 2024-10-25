import 'package:json_annotation/json_annotation.dart';

import 'unit.dart';

part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Course {
  final String id;
  final List<Unit> units;

  const Course({
    required this.id,
    required this.units,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
