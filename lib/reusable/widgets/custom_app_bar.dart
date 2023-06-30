import 'package:flutter/material.dart';
import 'package:food/utils/app_colors.dart';

import '../painters/logo_painter.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    super.leading,
    super.actions,
  }) : super(
          backgroundColor: AppColors.secondary1,
          foregroundColor: AppColors.white,
          toolbarHeight: 60,
          centerTitle: true,
          title: SizedBox(
            width: 100,
            height: 40,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.white,
              ),
              child: Center(
                child: SizedBox(
                  width: 35.0 / 110.0 * 200,
                  height: 35,
                  child: CustomPaint(
                    painter: LogoPainter(
                      valueLeft: 1,
                      valueRight: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}
