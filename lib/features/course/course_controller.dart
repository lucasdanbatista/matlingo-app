import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

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

  @action
  Future<void> fetchUnits() async {
    units = ObservableList.of(await _repository.findUnits());
  }

  @action
  Future<void> refresh() async {
    units = ObservableList.of(units);
  }
}
