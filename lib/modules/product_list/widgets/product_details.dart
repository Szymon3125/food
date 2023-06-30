import 'package:flutter/material.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/utils/app_colors.dart';
import 'package:intl/intl.dart';

import '../../../reusable/widgets/rounded_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
    required this.removeProduct,
  });

  final ProductDTO product;
  final void Function() removeProduct;

  @override
  Widget build(BuildContext context) {
    final expirationDate =
        DateTime.fromMillisecondsSinceEpoch(product.expiration);

    final difference = _daysBetween(DateTime.now(), expirationDate);

    return DecoratedBox(
      decoration: BoxDecoration(color: AppColors.night.withOpacity(0.2)),
      child: SafeArea(
        child: Column(
          children: [
            const Expanded(child: SizedBox.shrink()),
            Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 100,
                      width: double.infinity,
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32)),
                      ),
                      child: SizedBox(
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(color: AppColors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _field(
                              Text(
                                product.name,
                                style: const TextStyle(
                                  color: AppColors.night,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 24.0 / 18.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            _field(
                              Text(
                                DateFormat('dd.MM.y').format(expirationDate),
                                style: TextStyle(
                                  color: difference < 0
                                      ? AppColors.red
                                      : difference < 3
                                          ? AppColors.orange
                                          : AppColors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  height: 24.0 / 18.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            if (product.amount != null)
                              _field(
                                Text(
                                  '${product.amount! == product.amount!.roundToDouble() ? product.amount!.toInt() : product.amount!} ${product.unit ?? ''}',
                                  style: const TextStyle(
                                    color: AppColors.night,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    height: 24.0 / 18.0,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 24),
                            RoundedButton(
                              text: 'Usuń',
                              onPressed: removeProduct,
                              width: 125,
                              color: AppColors.primary2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Material(
                      color: AppColors.goldLight,
                      child: SizedBox(
                        width: 200,
                        height: 200,
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
                                    fontSize: 64,
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _field(Widget child) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.grayLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 12,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  int _daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
}
