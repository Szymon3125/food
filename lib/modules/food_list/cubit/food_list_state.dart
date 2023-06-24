part of 'food_list_cubit.dart';

abstract class FoodListState extends Equatable {
  const FoodListState();

  @override
  List<Object> get props => [];
}

class FoodListInitialState extends FoodListState {
  const FoodListInitialState();
}

class FoodListLoadingState extends FoodListState {
  const FoodListLoadingState();
}

class FoodListLoadedState extends FoodListState {
  const FoodListLoadedState({
    required this.products,
  });

  final List<ProductDTO> products;

  @override
  List<Object> get props => [products];
}

class FoodListError extends FoodListState {
  const FoodListError();
}
