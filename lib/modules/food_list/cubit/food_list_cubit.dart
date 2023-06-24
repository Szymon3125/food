import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/food_repository/models/product_dto.dart';

part 'food_list_state.dart';

class FoodListCubit extends Cubit<FoodListState> {
  FoodListCubit() : super(const FoodListInitialState());

  Future<void> loadProduct() async {
    emit(const FoodListLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(FoodListLoadedState(products: [
      ProductDTO(
        id: '0',
        name: 'mleko',
        expiration: DateTime.now().millisecondsSinceEpoch,
        amount: 1,
        unit: 'butelki',
      ),
      ProductDTO(
        id: '0',
        name: 'jogurt',
        expiration:
            DateTime.now().add(const Duration(days: -3)).millisecondsSinceEpoch,
        amount: 1,
        unit: 'butelki',
      ),
      ProductDTO(
        id: '0',
        name: 'ser',
        expiration:
            DateTime.now().add(const Duration(days: 1)).millisecondsSinceEpoch,
        amount: 1,
        unit: 'butelki',
      ),
      ProductDTO(
        id: '0',
        name: 'szynka',
        expiration:
            DateTime.now().add(const Duration(days: -2)).millisecondsSinceEpoch,
        amount: 1,
        unit: 'butelki',
      ),
      ProductDTO(
        id: '0',
        name: 'salami',
        expiration:
            DateTime.now().add(const Duration(days: 3)).millisecondsSinceEpoch,
        amount: 1,
        unit: 'butelki',
      ),
    ]));
  }
}
