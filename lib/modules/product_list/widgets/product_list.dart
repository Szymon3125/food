import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/modules/product_list/cubit/product_list_cubit.dart';
import 'package:food/modules/product_list/widgets/product_details.dart';
import 'package:food/modules/product_list/widgets/product_tile.dart';
import 'package:food/reusable/widgets/rounded_text_field.dart';
import 'package:food/utils/app_colors.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    super.key,
  });

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final _formKey = GlobalKey<FormBuilderState>();

  static const String _search = 'search';

  List<ProductDTO> _products = [];
  final _visibleProducts = <ProductDTO>[];

  OverlayEntry? productOverlay;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          const Text(
            'Twoja lista produktów',
            style: TextStyle(
              color: AppColors.primary1,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 24.0 / 20.0,
            ),
          ),
          const SizedBox(height: 16),
          RoundedTextField(
            name: _search,
            hintText: 'Szukaj',
            radius: 30,
            prefixIcon: const Icon(
              Icons.search,
              opticalSize: 15,
            ),
            onChanged: (value) {
              _onSearchChanged(value);
              setState(() {});
            },
          ),
          const SizedBox(height: 24),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refresh,
              child: BlocBuilder<ProductListCubit, ProductListState>(
                builder: (context, state) {
                  _products = state.products;
                  _onSearchChanged(
                      _formKey.currentState?.fields[_search]?.value);

                  return ListView.builder(
                    itemBuilder: (context, index) => Material(
                        child: InkWell(
                            onTap: () => _onOfferTap(_visibleProducts[index]),
                            child:
                                ProductTile(product: _visibleProducts[index]))),
                    itemCount: _visibleProducts.length,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _refresh() async {
    await context.read<ProductListCubit>().loadProduct();
  }

  void _onSearchChanged(String? value) {
    final trimmed = value?.trim() ?? '';
    _visibleProducts.clear();

    for (final product in _products) {
      if (product.name.contains(trimmed)) {
        _visibleProducts.add(product);
      }
    }
  }

  void _onOfferTap(ProductDTO product) {
    productOverlay = OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => productOverlay?.remove(),
        child: ProductDetails(
          product: product,
        ),
      ),
    );

    Overlay.of(context).insert(productOverlay!);
  }
}
