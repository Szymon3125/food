import 'package:flutter/material.dart';
import 'package:food/utils/app_colors.dart';

class RoundedFieldBorder extends OutlineInputBorder {
  RoundedFieldBorder.normal({
    required double radius,
  }) : super(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: AppColors.secondary1,
          ),
        );

  RoundedFieldBorder.focused({
    required double radius,
  }) : super(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: AppColors.secondary1,
            width: 2,
          ),
        );

  RoundedFieldBorder.error({
    required double radius,
  }) : super(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: AppColors.red,
          ),
        );
}
