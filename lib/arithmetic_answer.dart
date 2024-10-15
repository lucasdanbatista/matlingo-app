import 'package:flutter/material.dart';

class ArithmeticAnswer extends StatefulWidget {
  final String operand1;
  final String operator;
  final String operand2;
  final ValueChanged<bool> onTap;

  const ArithmeticAnswer({
    super.key,
    required this.operand1,
    required this.operator,
    required this.operand2,
    required this.onTap,
  });

  @override
  State<ArithmeticAnswer> createState() => _ArithmeticAnswerState();
}

class _ArithmeticAnswerState extends State<ArithmeticAnswer> {
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
          child: Text.rich(
            TextSpan(
              text: widget.operand1,
              children: [
                TextSpan(
                  text: ' ${widget.operator} ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextSpan(text: widget.operand2),
              ],
            ),
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
