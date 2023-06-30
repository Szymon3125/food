part of 'product_list_cubit.dart';

abstract class ProductListState extends Equatable {
  const ProductListState({required this.products});

  final List<ProductDTO> products;

  @override
  List<Object> get props => [products];
}

class ProductListInitialState extends ProductListState {
  const ProductListInitialState() : super(products: const []);
}

class ProductListLoadingState extends ProductListState {
  const ProductListLoadingState({
    required super.products,
  });
}

class ProductListLoadedState extends ProductListState {
  const ProductListLoadedState({
    required super.products,
  });
}

class ProductListErrorState extends ProductListState {
  const ProductListErrorState() : super(products: const []);
}
