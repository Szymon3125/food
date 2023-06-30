import 'package:flutter/material.dart';
import 'package:food/utils/app_colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.text,
    required this.onPressed,
    required this.color,
    this.width = 200,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final double width;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: SizedBox(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  height: 24.0 / 18.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
