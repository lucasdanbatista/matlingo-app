// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:matlingo/core/repositories/course_repository.dart' as _i562;
import 'package:matlingo/features/course/course_controller.dart' as _i119;
import 'package:matlingo/features/unit/unit_controller.dart' as _i159;
import 'package:matlingo/utils/app_router.dart' as _i443;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i159.UnitController>(() => _i159.UnitController());
    gh.lazySingleton<_i443.AppRouter>(() => _i443.AppRouter());
    gh.lazySingleton<_i562.CourseRepository>(
        () => _i562.MockedCourseRepository());
    gh.lazySingleton<_i119.CourseController>(
        () => _i119.CourseController(gh<_i562.CourseRepository>()));
    return this;
  }
}
