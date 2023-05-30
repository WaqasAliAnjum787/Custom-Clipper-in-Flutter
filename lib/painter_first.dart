import 'package:flutter/material.dart';

class MyFirstPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height;
    double width = size.width;
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawRect(Rect.fromLTWH(0, 0, width, height), paint);
  }

  @override
  bool shouldRepaint(MyFirstPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyFirstPainter oldDelegate) => false;
}
