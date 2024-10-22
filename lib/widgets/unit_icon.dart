import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/entities/unit.dart';
import '../utils/app_router.gr.dart';

class UnitIcon extends StatelessWidget {
  final Unit unit;
  final bool isUnlocked;

  const UnitIcon({
    super.key,
    required this.unit,
    required this.isUnlocked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isUnlocked ? context.pushRoute(UnitRoute(unit: unit)) : null,
      child: SizedBox.fromSize(
        size: const Size.square(88),
        child: Stack(
          children: [
            SizedBox(
              height: 56,
              width: 56,
              child: CircularProgressIndicator(
                strokeAlign: 3,
                strokeWidth: 6,
                value: isUnlocked ? unit.progress : 0,
                strokeCap: StrokeCap.round,
              ),
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isUnlocked
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).disabledColor,
              ),
              child: const Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}
