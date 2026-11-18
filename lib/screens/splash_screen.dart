import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/surca_logo.dart';
import 'welcome_screen.dart';

/// Pantalla de inicio breve: nombre y frase, y pasa sola a la bienvenida.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const ruta = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacementNamed(WelcomeScreen.ruta);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SurcaLogo(size: 120),
            const SizedBox(height: 16),
            Text('Surca', style: tema.displayLarge),
            const SizedBox(height: 8),
            Text('Del surco a tu mesa', style: tema.titleLarge),
          ],
        ),
      ),
    );
  }
}
