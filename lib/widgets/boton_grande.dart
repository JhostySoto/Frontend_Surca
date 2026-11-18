import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Botón amplio para usar con una mano.
class BotonGrande extends StatelessWidget {
  const BotonGrande({
    super.key,
    required this.texto,
    required this.onPressed,
    this.principal = true,
  });

  final String texto;
  final VoidCallback onPressed;
  final bool principal;

  @override
  Widget build(BuildContext context) {
    final estilo = principal
        ? FilledButton.styleFrom(
            backgroundColor: SurcaColors.verdeOscuro,
            foregroundColor: SurcaColors.crema,
          )
        : FilledButton.styleFrom(
            backgroundColor: SurcaColors.marron,
            foregroundColor: SurcaColors.crema,
          );
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: FilledButton(
        style: estilo.copyWith(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          ),
        ),
        onPressed: onPressed,
        child: Text(texto, style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
