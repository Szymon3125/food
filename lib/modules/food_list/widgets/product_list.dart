import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/modules/food_list/widgets/product_tile.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    required this.products,
    super.key,
  });

  final List<ProductDTO> products;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final _formKey = GlobalKey<FormBuilderState>();

  List<ProductDTO> visibleProducts = [];

  @override
  void initState() {
    visibleProducts = widget.products;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            name: 'search',
            decoration: const InputDecoration(labelText: 'Szukaj'),
            onChanged: onSearchChanged,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  ProductTile(product: visibleProducts[index]),
              itemCount: visibleProducts.length,
            ),
          ),
        ],
      ),
    );
  }

  void onSearchChanged(String? value) {
    final search = value?.trim() ?? '';

    visibleProducts = [];
    for (final product in widget.products) {
      if (product.name.contains(search)) {
        visibleProducts.add(product);
      }
    }

    visibleProducts.sort((a, b) => a.name.compareTo(b.name));

    setState(() {});
  }
}
