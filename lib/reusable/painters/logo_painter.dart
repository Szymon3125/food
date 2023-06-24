import 'package:flutter/material.dart';

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 0.8, size.height * 0.68);
    path.cubicTo(size.width * 0.78, size.height * 0.67, size.width * 0.75,
        size.height * 0.66, size.width * 0.72, size.height * 0.66);
    path.cubicTo(size.width * 0.67, size.height * 0.65, size.width * 0.63,
        size.height * 0.65, size.width * 0.57, size.height * 0.65);
    path.cubicTo(size.width * 0.57, size.height * 0.63, size.width * 0.57,
        size.height * 0.62, size.width * 0.57, size.height * 0.61);
    path.cubicTo(size.width * 0.58, size.height * 0.54, size.width * 0.58,
        size.height * 0.46, size.width * 0.59, size.height * 0.38);
    path.cubicTo(size.width * 0.59, size.height * 0.35, size.width * 0.6,
        size.height * 0.31, size.width * 0.61, size.height * 0.28);
    path.cubicTo(size.width * 0.62, size.height * 0.23, size.width * 0.66,
        size.height * 0.18, size.width * 0.78, size.height * 0.16);
    path.cubicTo(size.width * 0.78, size.height * 0.16, size.width * 0.78,
        size.height * 0.16, size.width * 0.78, size.height * 0.16);
    path.cubicTo(size.width * 0.84, size.height * 0.14, size.width * 0.84,
        size.height * 0.12, size.width * 0.8, size.height * 0.09);
    path.cubicTo(size.width * 0.77, size.height * 0.07, size.width * 0.73,
        size.height * 0.06, size.width * 0.68, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.49,
        size.height * 0.09, size.width * 0.42, size.height * 0.13);
    path.cubicTo(size.width * 0.37, size.height * 0.16, size.width / 3,
        size.height / 5, size.width * 0.31, size.height / 4);
    path.cubicTo(size.width * 0.27, size.height * 0.36, size.width * 0.26,
        size.height * 0.46, size.width * 0.27, size.height * 0.57);
    path.cubicTo(size.width * 0.27, size.height * 0.6, size.width * 0.27,
        size.height * 0.63, size.width * 0.27, size.height * 0.65);
    path.cubicTo(size.width / 4, size.height * 0.65, size.width / 4,
        size.height * 0.65, size.width * 0.23, size.height * 0.66);
    path.cubicTo(size.width / 5, size.height * 0.67, size.width * 0.16,
        size.height * 0.67, size.width * 0.13, size.height * 0.68);
    path.cubicTo(size.width * 0.1, size.height * 0.69, size.width * 0.09,
        size.height * 0.71, size.width * 0.1, size.height * 0.73);
    path.cubicTo(size.width * 0.11, size.height * 0.75, size.width * 0.13,
        size.height * 0.76, size.width * 0.17, size.height * 0.76);
    path.cubicTo(size.width * 0.19, size.height * 0.77, size.width / 5,
        size.height * 0.77, size.width * 0.23, size.height * 0.77);
    path.cubicTo(size.width / 4, size.height * 0.77, size.width * 0.27,
        size.height * 0.77, size.width * 0.28, size.height * 0.77);
    path.cubicTo(size.width * 0.29, size.height * 0.83, size.width * 0.3,
        size.height * 0.89, size.width * 0.31, size.height * 0.95);
    path.cubicTo(size.width * 0.32, size.height * 0.98, size.width / 3,
        size.height, size.width * 0.35, size.height * 1.03);
    path.cubicTo(size.width * 0.37, size.height * 1.05, size.width * 0.41,
        size.height * 1.06, size.width * 0.45, size.height * 1.06);
    path.cubicTo(size.width / 2, size.height * 1.06, size.width * 0.53,
        size.height * 1.05, size.width * 0.54, size.height * 1.02);
    path.cubicTo(size.width * 0.55, size.height, size.width * 0.56,
        size.height * 0.96, size.width * 0.56, size.height * 0.93);
    path.cubicTo(size.width * 0.56, size.height * 0.88, size.width * 0.56,
        size.height * 0.83, size.width * 0.57, size.height * 0.77);
    path.cubicTo(size.width * 0.57, size.height * 0.77, size.width * 0.57,
        size.height * 0.76, size.width * 0.58, size.height * 0.76);
    path.cubicTo(size.width * 0.64, size.height * 0.76, size.width * 0.69,
        size.height * 0.76, size.width * 0.74, size.height * 0.76);
    path.cubicTo(size.width * 0.78, size.height * 0.76, size.width * 0.81,
        size.height * 0.75, size.width * 0.82, size.height * 0.73);
    path.cubicTo(size.width * 0.84, size.height * 0.71, size.width * 0.83,
        size.height * 0.69, size.width * 0.8, size.height * 0.68);
    path.cubicTo(size.width * 0.8, size.height * 0.68, size.width * 0.8,
        size.height * 0.68, size.width * 0.8, size.height * 0.68);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xff223382).withOpacity(1);
    path = Path();
    path.lineTo(size.width * 1.1, size.height * 0.65);
    path.cubicTo(size.width * 1.1, size.height * 0.67, size.width * 1.12,
        size.height * 0.66, size.width * 1.14, size.height * 0.67);
    path.cubicTo(size.width * 1.17, size.height * 0.68, size.width * 1.17,
        size.height * 0.69, size.width * 1.2, size.height * 0.68);
    path.cubicTo(size.width * 1.22, size.height * 0.68, size.width * 1.22,
        size.height * 0.67, size.width * 1.25, size.height * 0.66);
    path.cubicTo(size.width * 1.28, size.height * 0.64, size.width * 1.31,
        size.height * 0.65, size.width * 1.31, size.height * 0.63);
    path.cubicTo(size.width * 1.31, size.height * 0.63, size.width * 1.28,
        size.height * 0.62, size.width * 1.28, size.height * 0.62);
    path.cubicTo(size.width * 1.27, size.height * 0.61, size.width * 1.28,
        size.height * 0.59, size.width * 1.25, size.height * 0.59);
    path.cubicTo(size.width * 1.22, size.height * 0.59, size.width * 1.23,
        size.height * 0.6, size.width * 1.2, size.height * 0.61);
    path.cubicTo(size.width * 1.18, size.height * 0.61, size.width * 1.16,
        size.height * 0.6, size.width * 1.14, size.height * 0.61);
    path.cubicTo(size.width * 1.12, size.height * 0.61, size.width * 1.14,
        size.height * 0.62, size.width * 1.12, size.height * 0.63);
    path.cubicTo(size.width * 1.1, size.height * 0.64, size.width * 1.09,
        size.height * 0.64, size.width * 1.1, size.height * 0.65);
    path.cubicTo(size.width * 1.1, size.height * 0.65, size.width * 1.1,
        size.height * 0.65, size.width * 1.1, size.height * 0.65);
    path.lineTo(size.width * 1.7, size.height * 0.72);
    path.cubicTo(size.width * 1.7, size.height * 0.74, size.width * 1.7,
        size.height * 0.76, size.width * 1.69, size.height * 0.78);
    path.cubicTo(size.width * 1.68, size.height * 0.8, size.width * 1.66,
        size.height * 0.81, size.width * 1.64, size.height * 0.83);
    path.cubicTo(size.width * 1.6, size.height * 0.86, size.width * 1.55,
        size.height * 0.89, size.width * 1.49, size.height * 0.9);
    path.cubicTo(size.width * 1.42, size.height * 0.92, size.width * 1.36,
        size.height * 0.93, size.width * 1.29, size.height * 0.93);
    path.cubicTo(size.width * 1.16, size.height * 0.93, size.width * 1.06,
        size.height * 0.91, size.width, size.height * 0.87);
    path.cubicTo(size.width * 0.91, size.height * 0.84, size.width * 0.87,
        size.height * 0.79, size.width * 0.87, size.height * 0.73);
    path.cubicTo(size.width * 0.87, size.height * 0.67, size.width * 0.91,
        size.height * 0.62, size.width, size.height * 0.58);
    path.cubicTo(size.width * 1.07, size.height * 0.54, size.width * 1.17,
        size.height * 0.52, size.width * 1.3, size.height * 0.52);
    path.cubicTo(size.width * 1.42, size.height * 0.52, size.width * 1.51,
        size.height * 0.54, size.width * 1.59, size.height * 0.57);
    path.cubicTo(size.width * 1.67, size.height * 0.61, size.width * 1.7,
        size.height * 0.66, size.width * 1.7, size.height * 0.72);
    path.cubicTo(size.width * 1.7, size.height * 0.72, size.width * 1.7,
        size.height * 0.72, size.width * 1.7, size.height * 0.72);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = const Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(size.width * 3.61, size.height * 0.19);
    path.cubicTo(size.width * 3.6, size.height * 0.16, size.width * 3.59,
        size.height * 0.13, size.width * 3.57, size.height * 0.1);
    path.cubicTo(size.width * 3.56, size.height * 0.08, size.width * 3.53,
        size.height * 0.07, size.width * 3.48, size.height * 0.07);
    path.cubicTo(size.width * 3.43, size.height * 0.07, size.width * 3.4,
        size.height * 0.08, size.width * 3.38, size.height * 0.1);
    path.cubicTo(size.width * 3.37, size.height * 0.12, size.width * 3.36,
        size.height * 0.13, size.width * 3.36, size.height * 0.15);
    path.cubicTo(size.width * 3.34, size.height * 0.22, size.width * 3.33,
        size.height * 0.3, size.width * 3.31, size.height * 0.37);
    path.cubicTo(size.width * 3.31, size.height * 0.39, size.width * 3.31,
        size.height * 0.4, size.width * 3.3, size.height * 0.42);
    path.cubicTo(size.width * 3.24, size.height * 0.42, size.width * 3.18,
        size.height * 0.43, size.width * 3.13, size.height * 0.43);
    path.cubicTo(size.width * 2.93, size.height * 0.45, size.width * 2.78,
        size.height * 0.51, size.width * 2.69, size.height * 0.61);
    path.cubicTo(size.width * 2.65, size.height * 0.67, size.width * 2.63,
        size.height * 0.73, size.width * 2.68, size.height * 0.78);
    path.cubicTo(size.width * 2.75, size.height * 0.87, size.width * 2.9,
        size.height * 0.9, size.width * 3.06, size.height * 0.86);
    path.cubicTo(size.width * 3.14, size.height * 0.84, size.width * 3.2,
        size.height * 0.81, size.width * 3.25, size.height * 0.77);
    path.cubicTo(size.width * 3.27, size.height * 0.76, size.width * 3.28,
        size.height * 0.75, size.width * 3.3, size.height * 0.74);
    path.cubicTo(size.width * 3.31, size.height * 0.77, size.width * 3.31,
        size.height * 0.79, size.width * 3.32, size.height * 0.82);
    path.cubicTo(size.width * 3.33, size.height * 0.85, size.width * 3.34,
        size.height * 0.89, size.width * 3.36, size.height * 0.93);
    path.cubicTo(size.width * 3.38, size.height * 0.96, size.width * 3.43,
        size.height * 0.98, size.width * 3.5, size.height * 0.98);
    path.cubicTo(size.width * 3.56, size.height * 0.97, size.width * 3.6,
        size.height * 0.95, size.width * 3.62, size.height * 0.92);
    path.cubicTo(size.width * 3.64, size.height * 0.9, size.width * 3.64,
        size.height * 0.87, size.width * 3.65, size.height * 0.85);
    path.cubicTo(size.width * 3.66, size.height * 0.63, size.width * 3.65,
        size.height * 0.41, size.width * 3.61, size.height * 0.19);
    path.cubicTo(size.width * 3.61, size.height * 0.19, size.width * 3.61,
        size.height * 0.19, size.width * 3.61, size.height * 0.19);
    path.lineTo(size.width * 2.95, size.height * 0.74);
    path.cubicTo(size.width * 2.92, size.height * 0.66, size.width * 3.05,
        size.height * 0.58, size.width * 3.22, size.height * 0.56);
    path.cubicTo(size.width * 3.16, size.height * 0.64, size.width * 3.1,
        size.height * 0.71, size.width * 2.95, size.height * 0.74);
    path.cubicTo(size.width * 2.95, size.height * 0.74, size.width * 2.95,
        size.height * 0.74, size.width * 2.95, size.height * 0.74);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = const Color(0xff223382).withOpacity(1);
    path = Path();
    path.lineTo(size.width * 1.98, size.height * 0.65);
    path.cubicTo(size.width * 1.99, size.height * 0.67, size.width * 2.01,
        size.height * 0.66, size.width * 2.03, size.height * 0.67);
    path.cubicTo(size.width * 2.06, size.height * 0.68, size.width * 2.05,
        size.height * 0.69, size.width * 2.08, size.height * 0.68);
    path.cubicTo(size.width * 2.11, size.height * 0.68, size.width * 2.1,
        size.height * 0.67, size.width * 2.13, size.height * 0.66);
    path.cubicTo(size.width * 2.16, size.height * 0.64, size.width * 2.2,
        size.height * 0.65, size.width * 2.2, size.height * 0.63);
    path.cubicTo(size.width * 2.2, size.height * 0.63, size.width * 2.17,
        size.height * 0.62, size.width * 2.16, size.height * 0.62);
    path.cubicTo(size.width * 2.16, size.height * 0.61, size.width * 2.17,
        size.height * 0.59, size.width * 2.14, size.height * 0.59);
    path.cubicTo(size.width * 2.11, size.height * 0.59, size.width * 2.11,
        size.height * 0.6, size.width * 2.09, size.height * 0.61);
    path.cubicTo(size.width * 2.06, size.height * 0.61, size.width * 2.05,
        size.height * 0.6, size.width * 2.03, size.height * 0.61);
    path.cubicTo(size.width * 2, size.height * 0.61, size.width * 2.02,
        size.height * 0.62, size.width * 2.01, size.height * 0.63);
    path.cubicTo(size.width * 1.99, size.height * 0.64, size.width * 1.98,
        size.height * 0.64, size.width * 1.98, size.height * 0.65);
    path.cubicTo(size.width * 1.98, size.height * 0.65, size.width * 1.98,
        size.height * 0.65, size.width * 1.98, size.height * 0.65);
    path.lineTo(size.width * 2.59, size.height * 0.72);
    path.cubicTo(size.width * 2.59, size.height * 0.74, size.width * 2.58,
        size.height * 0.76, size.width * 2.57, size.height * 0.78);
    path.cubicTo(size.width * 2.56, size.height * 0.8, size.width * 2.55,
        size.height * 0.81, size.width * 2.53, size.height * 0.83);
    path.cubicTo(size.width * 2.49, size.height * 0.86, size.width * 2.44,
        size.height * 0.89, size.width * 2.37, size.height * 0.9);
    path.cubicTo(size.width * 2.31, size.height * 0.92, size.width * 2.24,
        size.height * 0.93, size.width * 2.17, size.height * 0.93);
    path.cubicTo(size.width * 2.05, size.height * 0.93, size.width * 1.95,
        size.height * 0.91, size.width * 1.87, size.height * 0.87);
    path.cubicTo(size.width * 1.79, size.height * 0.84, size.width * 1.75,
        size.height * 0.79, size.width * 1.75, size.height * 0.73);
    path.cubicTo(size.width * 1.75, size.height * 0.67, size.width * 1.79,
        size.height * 0.62, size.width * 1.87, size.height * 0.58);
    path.cubicTo(size.width * 1.95, size.height * 0.54, size.width * 2.06,
        size.height * 0.52, size.width * 2.18, size.height * 0.52);
    path.cubicTo(size.width * 2.3, size.height * 0.52, size.width * 2.4,
        size.height * 0.54, size.width * 2.47, size.height * 0.57);
    path.cubicTo(size.width * 2.55, size.height * 0.61, size.width * 2.59,
        size.height * 0.66, size.width * 2.59, size.height * 0.72);
    path.cubicTo(size.width * 2.59, size.height * 0.72, size.width * 2.59,
        size.height * 0.72, size.width * 2.59, size.height * 0.72);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = const Color(0xff47cc).withOpacity(1);
    path = Path();
    path.lineTo(size.width * 2.59, size.height * 0.72);
    path.cubicTo(size.width * 2.59, size.height * 0.74, size.width * 2.58,
        size.height * 0.76, size.width * 2.57, size.height * 0.78);
    path.cubicTo(size.width * 2.56, size.height * 0.8, size.width * 2.55,
        size.height * 0.81, size.width * 2.53, size.height * 0.83);
    path.cubicTo(size.width * 2.49, size.height * 0.86, size.width * 2.43,
        size.height * 0.89, size.width * 2.37, size.height * 0.9);
    path.cubicTo(size.width * 2.26, size.height * 0.94, size.width * 2.08,
        size.height * 0.94, size.width * 2.01, size.height * 0.92);
    path.cubicTo(size.width * 2.06, size.height * 0.92, size.width * 2.5,
        size.height * 0.89, size.width * 2.59, size.height * 0.72);
    path.cubicTo(size.width * 2.59, size.height * 0.72, size.width * 2.59,
        size.height * 0.72, size.width * 2.59, size.height * 0.72);
    canvas.drawPath(path, paint);

    // Path number 6

    paint.color = const Color(0xff47d0).withOpacity(1);
    path = Path();
    path.lineTo(size.width * 1.7, size.height * 0.72);
    path.cubicTo(size.width * 1.7, size.height * 0.74, size.width * 1.7,
        size.height * 0.76, size.width * 1.69, size.height * 0.78);
    path.cubicTo(size.width * 1.68, size.height * 0.8, size.width * 1.66,
        size.height * 0.81, size.width * 1.64, size.height * 0.83);
    path.cubicTo(size.width * 1.6, size.height * 0.86, size.width * 1.55,
        size.height * 0.89, size.width * 1.49, size.height * 0.9);
    path.cubicTo(size.width * 1.37, size.height * 0.94, size.width * 1.19,
        size.height * 0.94, size.width * 1.12, size.height * 0.92);
    path.cubicTo(size.width * 1.18, size.height * 0.92, size.width * 1.62,
        size.height * 0.89, size.width * 1.7, size.height * 0.72);
    path.cubicTo(size.width * 1.7, size.height * 0.72, size.width * 1.7,
        size.height * 0.72, size.width * 1.7, size.height * 0.72);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
