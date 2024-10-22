import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'unit_controller.g.dart';

@injectable
class UnitController = UnitControllerBase with _$UnitController;

abstract class UnitControllerBase with Store {
  @observable
  double progress = 0;

  @action
  void setProgress(double value) => progress = value;
}
