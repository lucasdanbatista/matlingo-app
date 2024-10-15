import 'package:flutter/material.dart';
import 'package:matlingo/lesson_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.blue,
          inverseSurface: Colors.white12,
        ),
      ),
      routes: {
        '/': (context) => const LessonPage(),
      },
    );
  }
}
