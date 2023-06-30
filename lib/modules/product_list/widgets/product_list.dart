import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/modules/product_list/cubit/product_list_cubit.dart';
import 'package:food/modules/product_list/widgets/product_details.dart';
import 'package:food/modules/product_list/widgets/product_tile.dart';
import 'package:food/reusable/widgets/rounded_button.dart';
import 'package:food/reusable/widgets/rounded_text_field.dart';
import 'package:food/utils/app_colors.dart';

import '../../../router/app_router.gr.dart';

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
    return Stack(
      children: [
        FormBuilder(
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
                      if (state is ProductListErrorState) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Ups! Coś poszło nie tak!',
                              style: TextStyle(
                                color: AppColors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 24),
                            RoundedButton(
                              text: 'Spróbuj ponownie',
                              onPressed: () => context
                                  .read<ProductListCubit>()
                                  .loadProducts(),
                              color: AppColors.secondary3,
                            ),
                          ],
                        );
                      }

                      _products = state.products;
                      _onSearchChanged(
                          _formKey.currentState?.fields[_search]?.value);

                      return ListView.builder(
                        itemBuilder: (context, index) => Material(
                            child: InkWell(
                                onTap: () =>
                                    _onOfferTap(_visibleProducts[index]),
                                child: ProductTile(
                                    product: _visibleProducts[index]))),
                        itemCount: _visibleProducts.length,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Material(
                color: AppColors.gold,
                child: InkWell(
                  onTap: () =>
                      _addProduct(context, context.read<ProductListCubit>()),
                  child: const SizedBox(
                    width: 64,
                    height: 64,
                    child: Icon(
                      Icons.add_rounded,
                      color: AppColors.white,
                      size: 64,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> _addProduct(BuildContext context, ProductListCubit cubit) async {
    await AutoRouter.of(context).push(AddProductRoute(
      refresh: cubit.loadProducts,
    ));
  }

  Future<void> _refresh() async {
    await context.read<ProductListCubit>().loadProducts();
  }

  void _onSearchChanged(String? value) {
    final trimmed = value?.trim() ?? '';
    _visibleProducts.clear();

    for (final product in _products) {
      if (product.name.toUpperCase().contains(trimmed.toUpperCase())) {
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
          removeProduct: () => _removeProduct(product.id),
        ),
      ),
    );

    Overlay.of(context).insert(productOverlay!);
  }

  Future<void> _removeProduct(String id) async {
    await context.read<ProductListCubit>().deleteProduct(id);
    productOverlay?.remove();
  }
}
