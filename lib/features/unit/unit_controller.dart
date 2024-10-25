import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../core/entities/arithmetic_lesson.dart';
import '../../core/entities/course.dart';
import '../../core/entities/unit.dart';
import '../../core/repositories/course_repository.dart';

part 'unit_controller.g.dart';

@injectable
class UnitController = UnitControllerBase with _$UnitController;

abstract class UnitControllerBase with Store {
  final CourseRepository _courseRepository;

  UnitControllerBase(this._courseRepository);

  @observable
  double progress = 0;

  @action
  Future<void> completeLesson(
    Course course,
    Unit unit,
    ArithmeticLesson lesson,
  ) async {
    progress = await _courseRepository.completeLesson(
      courseId: course.id,
      unitId: unit.id,
      lesson: lesson,
    );
  }
}
