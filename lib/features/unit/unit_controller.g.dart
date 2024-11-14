// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UnitController on UnitControllerBase, Store {
  Computed<double>? _$progressComputed;

  @override
  double get progress =>
      (_$progressComputed ??= Computed<double>(() => super.progress,
              name: 'UnitControllerBase.progress'))
          .value;

  late final _$unitAtom =
      Atom(name: 'UnitControllerBase.unit', context: context);

  @override
  Unit? get unit {
    _$unitAtom.reportRead();
    return super.unit;
  }

  @override
  set unit(Unit? value) {
    _$unitAtom.reportWrite(value, super.unit, () {
      super.unit = value;
    });
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
  void setUnit(Unit value) {
    final _$actionInfo = _$UnitControllerBaseActionController.startAction(
        name: 'UnitControllerBase.setUnit');
    try {
      return super.setUnit(value);
    } finally {
      _$UnitControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
unit: ${unit},
progress: ${progress}
    ''';
  }
}
