import 'package:flutter/material.dart';

/// Colores de Surca: tierra y campo, sin amarillos.
class SurcaColors {
  static const verdeOscuro = Color(0xFF1F4D2E);
  static const verdeSuave = Color(0xFF8DB580);
  static const marron = Color(0xFF7A5230);
  static const crema = Color(0xFFF6F0E4);
}

class AppTheme {
  static ThemeData get light {
    final scheme = ColorScheme.fromSeed(
      seedColor: SurcaColors.verdeOscuro,
      primary: SurcaColors.verdeOscuro,
      secondary: SurcaColors.marron,
      surface: SurcaColors.crema,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: SurcaColors.crema,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 52,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          color: SurcaColors.verdeOscuro,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          height: 1.4,
          color: SurcaColors.marron,
        ),
        labelLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
