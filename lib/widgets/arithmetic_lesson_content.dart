import 'package:flutter/material.dart';

import '../core/entities/arithmetic_answer.dart';
import '../core/entities/arithmetic_lesson.dart';
import 'arithmetic_answer_widget.dart';

class ArithmeticLessonContent extends StatefulWidget {
  final ArithmeticLesson lesson;
  final VoidCallback onComplete;

  const ArithmeticLessonContent({
    super.key,
    required this.lesson,
    required this.onComplete,
  });

  @override
  State<ArithmeticLessonContent> createState() =>
      _ArithmeticLessonContentState();
}

class _ArithmeticLessonContentState extends State<ArithmeticLessonContent> {
  var selectedAnswers = <ArithmeticAnswer>[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: '${widget.lesson.question} ',
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: '=',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                        width: 150,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainer,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              crossAxisCount: 2,
              children: widget.lesson.answers
                  .map(
                    (answer) => ArithmeticAnswerWidget(
                      answer: answer,
                      onTap: (selected) => selected
                          ? setState(() => selectedAnswers.add(answer))
                          : setState(() => selectedAnswers.remove(answer)),
                    ),
                  )
                  .toList(),
            ),
            const Spacer(),
            FilledButton(
              onPressed: selectedAnswers.isNotEmpty
                  ? () {
                      if (widget.lesson.isAnswersCorrect(selectedAnswers)) {
                        widget.onComplete();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text(
                              'Tente novamente.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                      }
                    }
                  : null,
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
              ),
              child: const Text('VERIFICAR'),
            ),
          ],
        ),
      ),
    );
  }
}
