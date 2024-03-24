import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

class AppBarCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint();
    Path _path = Path();
    Paint _profileBgPaint = Paint();
    Path _profilePath = Path();
    Paint _drawLinePaint = Paint();
    _drawLinePaint
      ..style = PaintingStyle.stroke
      ..color = accentColor.withOpacity(0.5)
      ..strokeWidth = 2;
    Path _drawLinePath = Path();
    _drawLinePath
      ..moveTo(0, 40)
      ..quadraticBezierTo(80, 160, 160, 80);
    _paint.color = greenPrimaryColor;

    _profileBgPaint.color = accentColor;

    _profilePath
      ..moveTo(size.width - (size.width * 0.2), 60)
      ..lineTo(size.width, 60)
      ..lineTo(size.width, 120)
      ..quadraticBezierTo(size.width, 160, size.width - 60, 160)
      ..lineTo(size.width * 0.7, 160)
      ..quadraticBezierTo(size.width * 0.8, 160, size.width * 0.8, 100)
      ..quadraticBezierTo(size.width * 0.8, 60, size.width * 0.9, 60);

    _path
      ..lineTo(size.width, 0)
      ..lineTo(size.width, 120)
      ..quadraticBezierTo(size.width, 160, size.width - 80, 160)
      ..lineTo(80, 160)
      ..quadraticBezierTo(0, 160, 0, 120);

    canvas.drawPath(_path, _paint);
    canvas.drawPath(_drawLinePath, _drawLinePaint);
    canvas.drawPath(_profilePath, _profileBgPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
