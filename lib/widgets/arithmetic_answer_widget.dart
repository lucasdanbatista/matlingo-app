import 'package:flutter/material.dart';

import '../core/entities/arithmetic_answer.dart';

class ArithmeticAnswerWidget extends StatefulWidget {
  final ArithmeticAnswer answer;
  final ValueChanged<bool> onTap;

  const ArithmeticAnswerWidget({
    super.key,
    required this.answer,
    required this.onTap,
  });

  @override
  State<ArithmeticAnswerWidget> createState() => _ArithmeticAnswerWidgetState();
}

class _ArithmeticAnswerWidgetState extends State<ArithmeticAnswerWidget> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        selected = !selected;
        widget.onTap(selected);
      }),
      child: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: selected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.inverseSurface,
            width: 2,
          ),
        ),
        child: Center(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text.rich(
              TextSpan(
                text: widget.answer.operand1,
                children: [
                  TextSpan(
                    text: ' ${widget.answer.operator} ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  TextSpan(text: widget.answer.operand2),
                ],
              ),
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
