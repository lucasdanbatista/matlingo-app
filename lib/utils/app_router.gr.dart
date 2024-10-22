// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:matlingo/core/entities/unit.dart' as _i5;
import 'package:matlingo/features/course/course_page.dart' as _i1;
import 'package:matlingo/features/unit/unit_page.dart' as _i2;

/// generated route for
/// [_i1.CoursePage]
class CourseRoute extends _i3.PageRouteInfo<CourseRouteArgs> {
  CourseRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          CourseRoute.name,
          args: CourseRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CourseRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<CourseRouteArgs>(orElse: () => const CourseRouteArgs());
      return _i1.CoursePage(key: args.key);
    },
  );
}

class CourseRouteArgs {
  const CourseRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'CourseRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.UnitPage]
class UnitRoute extends _i3.PageRouteInfo<UnitRouteArgs> {
  UnitRoute({
    _i4.Key? key,
    required _i5.Unit unit,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          UnitRoute.name,
          args: UnitRouteArgs(
            key: key,
            unit: unit,
          ),
          initialChildren: children,
        );

  static const String name = 'UnitRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UnitRouteArgs>();
      return _i2.UnitPage(
        key: args.key,
        unit: args.unit,
      );
    },
  );
}

class UnitRouteArgs {
  const UnitRouteArgs({
    this.key,
    required this.unit,
  });

  final _i4.Key? key;

  final _i5.Unit unit;

  @override
  String toString() {
    return 'UnitRouteArgs{key: $key, unit: $unit}';
  }
}
