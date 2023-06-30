import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/food_repository.dart';

import '../../../data/food_repository/models/product_dto.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit({
    required FoodRepository foodRepository,
  })  : _foodRepository = foodRepository,
        super(const ProductListInitialState());

  final FoodRepository _foodRepository;

  Future<void> loadProduct() async {
    emit(ProductListLoadingState(products: state.products));
    final products = await _foodRepository.getProductList()
      ..sort((a, b) => a.expiration.compareTo(b.expiration));
    emit(ProductListLoadedState(products: products));
  }
}
