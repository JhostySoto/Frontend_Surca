import 'package:flutter/material.dart';

/// Pantalla vacía de marcador; se reemplazará por registro e inicio de sesión.
class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key, required this.titulo});

  final String titulo;

  static const ruta = '/marcador';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Center(
        child: Text(
          'Próximamente',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
