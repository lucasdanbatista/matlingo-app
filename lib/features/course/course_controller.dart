import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../core/entities/course.dart';
import '../../core/entities/unit.dart';
import '../../core/repositories/course_repository.dart';

part 'course_controller.g.dart';

@lazySingleton
class CourseController = CourseControllerBase with _$CourseController;

abstract class CourseControllerBase with Store {
  final CourseRepository _repository;

  CourseControllerBase(this._repository);

  @observable
  List<Unit> units = ObservableList();

  @observable
  Course? course;

  @action
  Future<void> fetchUnits() async {
    final courses = await _repository.findCourses();
    course = courses.first;
    units = ObservableList.of(course!.units);
  }
}
