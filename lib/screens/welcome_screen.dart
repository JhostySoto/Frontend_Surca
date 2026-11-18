import 'package:flutter/material.dart';

import '../widgets/boton_grande.dart';
import '../widgets/surca_logo.dart';
import 'placeholder_screen.dart';

/// Bienvenida: marca, frase y dos caminos (productor o comprador).
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const ruta = '/bienvenida';

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              const Spacer(),
              const SurcaLogo(size: 140),
              const SizedBox(height: 16),
              Text('Surca', style: tema.displayLarge),
              const SizedBox(height: 8),
              Text(
                'Del surco a tu mesa. Productores de Loja, directo contigo.',
                textAlign: TextAlign.center,
                style: tema.titleLarge,
              ),
              const Spacer(),
              BotonGrande(
                texto: 'Soy productor',
                onPressed: () => Navigator.of(context).pushNamed(
                  PlaceholderScreen.ruta,
                  arguments: 'Soy productor',
                ),
              ),
              const SizedBox(height: 16),
              BotonGrande(
                texto: 'Quiero comprar',
                principal: false,
                onPressed: () => Navigator.of(context).pushNamed(
                  PlaceholderScreen.ruta,
                  arguments: 'Quiero comprar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
