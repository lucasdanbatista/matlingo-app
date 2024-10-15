import 'package:flutter/material.dart';

import 'lesson_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          inverseSurface: Colors.white10,
          surfaceContainer: Colors.blue.withOpacity(0.10),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          linearTrackColor: Colors.white12,
        ),
      ),
      routes: {
        '/': (context) => const LessonPage(),
      },
    );
  }
}
