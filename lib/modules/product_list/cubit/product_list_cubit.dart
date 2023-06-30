import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/local_storage.dart';

import '../../../data/food_repository/food_repository.dart';
import '../../../data/food_repository/models/product_dto.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit({
    required HddStorage foodRepository,
  })  : _foodRepository = foodRepository,
        super(const ProductListInitialState());

  final HddStorage _foodRepository;

  Future<void> loadProducts() async {
    emit(ProductListLoadingState(products: state.products));
    try {
      List<ProductDTO> products;
      if (_foodRepository.isAuthenticated.value) {
        products = await _foodRepository.getProductList();
      } else {
        products = await LocalRepository().getProductList();
      }

      products.sort((a, b) => a.expiration.compareTo(b.expiration));
      emit(ProductListLoadedState(products: products));
    } catch (_) {
      emit(const ProductListErrorState());
    }
  }

  Future<void> deleteProduct(String id) async {
    try {
      if (_foodRepository.isAuthenticated.value) {
        await _foodRepository.deleteProduct(id);
      } else {
        await LocalRepository().deleteProduct(id);
      }

      final products = List<ProductDTO>.from(state.products)
        ..removeWhere((element) => element.id == id);

      emit(ProductListLoadedState(products: products));
    } catch (_) {
      emit(const ProductListErrorState());
    }
  }
}
