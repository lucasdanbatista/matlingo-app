// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UnitController on UnitControllerBase, Store {
  late final _$progressAtom =
      Atom(name: 'UnitControllerBase.progress', context: context);

  @override
  double get progress {
    _$progressAtom.reportRead();
    return super.progress;
  }

  @override
  set progress(double value) {
    _$progressAtom.reportWrite(value, super.progress, () {
      super.progress = value;
    });
  }

  late final _$resetUnitAsyncAction =
      AsyncAction('UnitControllerBase.resetUnit', context: context);

  @override
  Future<void> resetUnit(Course course, Unit unit) {
    return _$resetUnitAsyncAction.run(() => super.resetUnit(course, unit));
  }

  late final _$completeLessonAsyncAction =
      AsyncAction('UnitControllerBase.completeLesson', context: context);

  @override
  Future<void> completeLesson(
      Course course, Unit unit, ArithmeticLesson lesson) {
    return _$completeLessonAsyncAction
        .run(() => super.completeLesson(course, unit, lesson));
  }

  late final _$UnitControllerBaseActionController =
      ActionController(name: 'UnitControllerBase', context: context);

  @override
  void setProgress(double value) {
    final _$actionInfo = _$UnitControllerBaseActionController.startAction(
        name: 'UnitControllerBase.setProgress');
    try {
      return super.setProgress(value);
    } finally {
      _$UnitControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
progress: ${progress}
    ''';
  }
}
