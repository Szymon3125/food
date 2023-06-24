import 'package:flutter/material.dart';
import 'package:food/data/food_repository/models/product_dto.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    required this.product,
    super.key,
  });

  final ProductDTO product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(product.name.trim()[0].toUpperCase()),
      ),
      title: Text(product.name),
      subtitle: expirationText(),
    );
  }

  Widget expirationText() {
    final expirationDate =
        DateTime.fromMillisecondsSinceEpoch(product.expiration);

    final expirationString =
        '${expirationDate.year}-${expirationDate.month}-${expirationDate.day}';

    return Text(expirationString);
  }
}
