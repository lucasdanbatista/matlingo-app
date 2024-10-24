import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'utils/app_router.dart';
import 'utils/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MainApp(
      router: get(),
    ),
  );
}

class MainApp extends StatelessWidget {
  final AppRouter router;

  const MainApp({
    super.key,
    required this.router,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          inverseSurface: Colors.white10,
          surfaceContainer: Colors.blue.withOpacity(0.10),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          linearTrackColor: Colors.white12,
          circularTrackColor: Colors.white12,
        ),
      ),
    );
  }
}
