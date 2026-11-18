import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Marca de Surca: un brote que sale de un surco, dibujado con código propio.
class SurcaLogo extends StatelessWidget {
  const SurcaLogo({super.key, this.size = 140});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: _BrotePainter()),
    );
  }
}

class _BrotePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size s) {
    final w = s.width;
    final h = s.height;

    // Surcos en la tierra (líneas curvas marrones).
    final tierra = Paint()
      ..color = SurcaColors.marron
      ..style = PaintingStyle.stroke
      ..strokeWidth = w * 0.045
      ..strokeCap = StrokeCap.round;
    for (final y in [0.80, 0.92]) {
      final p = Path()
        ..moveTo(w * 0.10, h * y)
        ..quadraticBezierTo(w * 0.50, h * (y - 0.08), w * 0.90, h * y);
      canvas.drawPath(p, tierra);
    }

    // Tallo.
    final tallo = Paint()
      ..color = SurcaColors.verdeOscuro
      ..style = PaintingStyle.stroke
      ..strokeWidth = w * 0.05
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(Offset(w * 0.5, h * 0.76), Offset(w * 0.5, h * 0.40), tallo);

    // Hoja izquierda (verde suave) y derecha (verde oscuro).
    final hojaIzq = Path()
      ..moveTo(w * 0.5, h * 0.50)
      ..quadraticBezierTo(w * 0.18, h * 0.50, w * 0.16, h * 0.22)
      ..quadraticBezierTo(w * 0.46, h * 0.22, w * 0.5, h * 0.50)
      ..close();
    final hojaDer = Path()
      ..moveTo(w * 0.5, h * 0.40)
      ..quadraticBezierTo(w * 0.52, h * 0.10, w * 0.84, h * 0.10)
      ..quadraticBezierTo(w * 0.86, h * 0.40, w * 0.5, h * 0.40)
      ..close();
    canvas.drawPath(hojaIzq, Paint()..color = SurcaColors.verdeSuave);
    canvas.drawPath(hojaDer, Paint()..color = SurcaColors.verdeOscuro);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
