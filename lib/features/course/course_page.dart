import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../utils/dependency_injection.dart';
import '../../widgets/unit_icon.dart';
import 'course_controller.dart';

@RoutePage()
class CoursePage extends StatelessWidget {
  final controller = get<CourseController>();

  CoursePage({super.key}) {
    controller.fetchUnits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matlingo'),
        centerTitle: true,
      ),
      body: Observer(
        builder: (context) {
          if (controller.course == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.all(24),
                child: Text(
                  controller.course?.title ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 56),
              ...controller.units.map(
                (unit) {
                  const distance = 88.0;
                  final position = controller.units.indexOf(unit) + 1;
                  var padding = const EdgeInsets.only(right: distance);
                  if (position % 2 == 0) {
                    padding = const EdgeInsets.only(left: distance);
                  } else if (position % 4 == 1) {
                    padding = const EdgeInsets.only(right: distance);
                  } else if (position % 6 == 2) {
                    padding = const EdgeInsets.only(left: distance * 3);
                  } else if (position % 8 == 3) {
                    padding = const EdgeInsets.only(left: distance * 3);
                  }
                  return Center(
                    child: Padding(
                      padding: padding,
                      child: UnitIcon(
                        unit: unit,
                        course: controller.course!,
                        isUnlocked: true,
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
