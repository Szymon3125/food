part of 'add_product_cubit.dart';

abstract class AddProductState extends Equatable {
  const AddProductState();

  @override
  List<Object> get props => [];
}

class AddProductEditingState extends AddProductState {
  const AddProductEditingState();
}

class AddProductSendingState extends AddProductState {
  const AddProductSendingState();
}

class AddProductSuccessState extends AddProductState {
  const AddProductSuccessState();
}

class AddProductErrorState extends AddProductState {
  const AddProductErrorState();
}
