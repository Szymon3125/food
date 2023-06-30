import 'package:flutter/material.dart';

import '../../../reusable/painters/logo_painter.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1, milliseconds: 500),
      vsync: this,
    );
    animation = Tween<double>(begin: (0), end: (1)).animate(CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 1, curve: Curves.bounceOut)))
      ..addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 110,
      child: ClipRect(
        child: CustomPaint(
          painter: LogoPainter(
            valueLeft: animation.value,
            valueRight: animation.value,
          ),
        ),
      ),
    );
  }
}
