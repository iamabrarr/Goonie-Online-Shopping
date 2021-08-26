import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';

class RPSCustomPainterButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = redColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1562500, size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * 0.1325625, size.height * 0.1234000,
        size.width * 0.1218750, size.height * 0.1400000);
    path_0.cubicTo(
        size.width * -0.0012187,
        size.height * 0.3751000,
        size.width * 0.0549687,
        size.height * 0.7989000,
        size.width * 0.1051250,
        size.height * 0.8668000);
    path_0.quadraticBezierTo(size.width * 0.1129375, size.height * 0.8818000,
        size.width * 0.1531250, size.height * 0.9000000);
    path_0.quadraticBezierTo(size.width * 0.6710938, size.height * 0.9000000,
        size.width * 0.8437500, size.height * 0.9000000);
    path_0.cubicTo(
        size.width * 0.9044688,
        size.height * 0.9005000,
        size.width * 0.9375937,
        size.height * 0.6734000,
        size.width * 0.8781250,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.8759375,
        size.height * 0.4769000,
        size.width * 0.8466875,
        size.height * 0.3705000,
        size.width * 0.7812500,
        size.height * 0.1467000);
    path_0.cubicTo(
        size.width * 0.7676875,
        size.height * 0.0830000,
        size.width * 0.6981875,
        size.height * 0.0966000,
        size.width * 0.7500000,
        size.height * 0.1000000);
    path_0.quadraticBezierTo(size.width * 0.5546875, size.height * 0.1000000,
        size.width * 0.1562500, size.height * 0.1000000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
