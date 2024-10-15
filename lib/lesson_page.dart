import 'package:flutter/material.dart';
import 'package:matlingo/arithmetic_answer.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Selecione todas ',
                  children: [
                    TextSpan(
                        text: 'as opções correspondentes a:',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        )),
                  ],
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 24),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                crossAxisCount: 2,
                children: [
                  ArithmeticAnswer(
                    operand1: '1',
                    operator: '/',
                    operand2: '2',
                    onTap: (selected) {},
                  ),
                  ArithmeticAnswer(
                    operand1: '2',
                    operator: '*',
                    operand2: '2',
                    onTap: (selected) {},
                  ),
                  ArithmeticAnswer(
                    operand1: '4',
                    operator: '-',
                    operand2: '2',
                    onTap: (selected) {},
                  ),
                  ArithmeticAnswer(
                    operand1: '5',
                    operator: '+',
                    operand2: '2',
                    onTap: (selected) {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
