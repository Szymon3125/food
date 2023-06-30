import 'package:flutter/material.dart';

class LogOutPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(
        size.width * 0.5000000,
        size.height * 0.6562500,
      )
      ..lineTo(
        size.width * 0.6562500,
        size.height * 0.5000000,
      )
      ..moveTo(
        size.width * 0.6562500,
        size.height * 0.5000000,
      )
      ..lineTo(
        size.width * 0.5000000,
        size.height * 0.3437500,
      )
      ..moveTo(
        size.width * 0.6562500,
        size.height * 0.5000000,
      )
      ..lineTo(
        size.width * 0.08333333,
        size.height * 0.5000000,
      )
      ..moveTo(
        size.width * 0.3437500,
        size.height * 0.2525308,
      )
      ..lineTo(
        size.width * 0.3437500,
        size.height * 0.2500104,
      )
      ..cubicTo(
        size.width * 0.3437500,
        size.height * 0.1916712,
        size.width * 0.3437500,
        size.height * 0.1624804,
        size.width * 0.3551037,
        size.height * 0.1401979,
      )
      ..cubicTo(
        size.width * 0.3650900,
        size.height * 0.1205975,
        size.width * 0.3810142,
        size.height * 0.1046733,
        size.width * 0.4006146,
        size.height * 0.09468708,
      )
      ..cubicTo(
        size.width * 0.4228958,
        size.height * 0.08333333,
        size.width * 0.4520875,
        size.height * 0.08333333,
        size.width * 0.5104292,
        size.height * 0.08333333,
      )
      ..lineTo(
        size.width * 0.7500083,
        size.height * 0.08333333,
      )
      ..cubicTo(
        size.width * 0.8083500,
        size.height * 0.08333333,
        size.width * 0.8374792,
        size.height * 0.08333333,
        size.width * 0.8597625,
        size.height * 0.09468708,
      )
      ..cubicTo(
        size.width * 0.8793583,
        size.height * 0.1046733,
        size.width * 0.8953375,
        size.height * 0.1205975,
        size.width * 0.9053208,
        size.height * 0.1401979,
      )
      ..cubicTo(
        size.width * 0.9166667,
        size.height * 0.1624583,
        size.width * 0.9166667,
        size.height * 0.1916142,
        size.width * 0.9166667,
        size.height * 0.2498392,
      )
      ..lineTo(
        size.width * 0.9166667,
        size.height * 0.7501875,
      )
      ..cubicTo(
        size.width * 0.9166667,
        size.height * 0.8084125,
        size.width * 0.9166667,
        size.height * 0.8375250,
        size.width * 0.9053208,
        size.height * 0.8597875,
      )
      ..cubicTo(
        size.width * 0.8953375,
        size.height * 0.8793833,
        size.width * 0.8793583,
        size.height * 0.8953375,
        size.width * 0.8597625,
        size.height * 0.9053208,
      )
      ..cubicTo(
        size.width * 0.8375000,
        size.height * 0.9166667,
        size.width * 0.8083875,
        size.height * 0.9166667,
        size.width * 0.7501625,
        size.height * 0.9166667,
      )
      ..lineTo(
        size.width * 0.5102542,
        size.height * 0.9166667,
      )
      ..cubicTo(
        size.width * 0.4520333,
        size.height * 0.9166667,
        size.width * 0.4228750,
        size.height * 0.9166667,
        size.width * 0.4006146,
        size.height * 0.9053208,
      )
      ..cubicTo(
        size.width * 0.3810142,
        size.height * 0.8953375,
        size.width * 0.3650900,
        size.height * 0.8793708,
        size.width * 0.3551037,
        size.height * 0.8597708,
      )
      ..cubicTo(
        size.width * 0.3437500,
        size.height * 0.8374917,
        size.width * 0.3437500,
        size.height * 0.8083375,
        size.width * 0.3437500,
        size.height * 0.7500000,
      )
      ..lineTo(size.width * 0.3437500, size.height * 0.7473958);

    final paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.08333333
      ..color = const Color(0xffFDFDFD).withOpacity(1)
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path, paintStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
