import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CourseRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: UnitRoute.page,
        ),
      ];
}
