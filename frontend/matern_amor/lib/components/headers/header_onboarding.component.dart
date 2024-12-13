import 'package:flutter/material.dart';

class InvertedCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Definindo o Paint para o gradiente
    Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFF4568DC), Color(0xFFB06AB3)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Criando o caminho para desenhar a forma com curva invertida
    Path path = Path();
    path.moveTo(size.width, 0); // Começa no topo à direita
    path.lineTo(0, 0); // Linha reta para o topo à esquerda
    path.lineTo(0, size.height); // Linha reta para baixo à esquerda

    // Curva de Bézier cúbica com valores proporcionais ao tamanho da tela
    path.cubicTo(
      size.width * 0.3, // Control Point 1 X
      size.height * 0.80, // Control Point 1 Y
      size.width * 0.7, // Control Point 2 X
      size.height * 0.80, // Control Point 2 Y
      size.width, // End Point X
      size.height, // End Point Y
    );
    
    path.close(); // Fecha o caminho

    // Desenhando o caminho com o gradiente
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
