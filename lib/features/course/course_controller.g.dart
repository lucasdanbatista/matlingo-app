// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CourseController on CourseControllerBase, Store {
  late final _$unitsAtom =
      Atom(name: 'CourseControllerBase.units', context: context);

  @override
  List<Unit> get units {
    _$unitsAtom.reportRead();
    return super.units;
  }

  @override
  set units(List<Unit> value) {
    _$unitsAtom.reportWrite(value, super.units, () {
      super.units = value;
    });
  }

  late final _$courseAtom =
      Atom(name: 'CourseControllerBase.course', context: context);

  @override
  Course? get course {
    _$courseAtom.reportRead();
    return super.course;
  }

  @override
  set course(Course? value) {
    _$courseAtom.reportWrite(value, super.course, () {
      super.course = value;
    });
  }

  late final _$fetchUnitsAsyncAction =
      AsyncAction('CourseControllerBase.fetchUnits', context: context);

  @override
  Future<void> fetchUnits() {
    return _$fetchUnitsAsyncAction.run(() => super.fetchUnits());
  }

  @override
  String toString() {
    return '''
units: ${units},
course: ${course}
    ''';
  }
}
