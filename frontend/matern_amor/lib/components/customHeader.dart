import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220, // Altura do header
          child: CustomPaint(
            size: const Size(double.infinity, 220),
            painter: HeaderPainter(),
            child: const Center(
              child: Image(
                image: AssetImage("images/logo.png"),
                height: 90,
                width: 90,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = const LinearGradient(
        colors: [Color(0xFF4568DC), Color(0xFFB06AB3)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, 0, size.height * 0.65);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
