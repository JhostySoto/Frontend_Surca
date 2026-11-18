import 'package:flutter/material.dart';

import 'screens/placeholder_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/welcome_screen.dart';
import 'theme/app_theme.dart';

void main() => runApp(const SurcaApp());

class SurcaApp extends StatelessWidget {
  const SurcaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Surca',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialRoute: SplashScreen.ruta,
      routes: {
        SplashScreen.ruta: (_) => const SplashScreen(),
        WelcomeScreen.ruta: (_) => const WelcomeScreen(),
        PlaceholderScreen.ruta: (context) => PlaceholderScreen(
              titulo: ModalRoute.of(context)?.settings.arguments as String? ??
                  'Surca',
            ),
      },
    );
  }
}
