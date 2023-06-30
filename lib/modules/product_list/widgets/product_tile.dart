import 'package:flutter/material.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/utils/app_colors.dart';
import 'package:intl/intl.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    required this.product,
    super.key,
  });

  final ProductDTO product;

  @override
  Widget build(BuildContext context) {
    final difference = _daysBetween(
      DateTime.now(),
      DateTime.fromMillisecondsSinceEpoch(product.expiration),
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: DecoratedBox(
              decoration: const BoxDecoration(color: AppColors.goldLight),
              child: SizedBox(
                width: 64,
                height: 64,
                child: product.image != null
                    ? Image.network(
                        product.image!,
                        fit: BoxFit.cover,
                      )
                    : Center(
                        child: Text(
                          product.name.trim()[0].toUpperCase(),
                          style: const TextStyle(
                            color: AppColors.night,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _roundedField(
                  Text(
                    product.name,
                    style: TextStyle(
                      color: difference < 0 ? AppColors.red : AppColors.night,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 24.0 / 16.0,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                _roundedField(_expirationText()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundedField(Widget text) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.grayLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: SizedBox(
          width: double.infinity,
          child: text,
        ),
      ),
    );
  }

  Widget _expirationText() {
    final expirationDate =
        DateTime.fromMillisecondsSinceEpoch(product.expiration);

    final difference = _daysBetween(DateTime.now(), expirationDate);

    return Text(
      DateFormat('dd.MM.y').format(expirationDate),
      style: TextStyle(
        color: difference < 0
            ? AppColors.red
            : difference < 3
                ? AppColors.orange
                : AppColors.green,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24.0 / 16.0,
      ),
    );
  }

  int _daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
}
