import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/food_repository.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:image_picker/image_picker.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit({required FoodRepository foodRepository})
      : _foodRepository = foodRepository,
        super(const AddProductEditingState());

  final FoodRepository _foodRepository;

  Future<void> addProduct(ProductDTO product, XFile? image) async {
    emit(const AddProductSendingState());
    try {
      await _foodRepository.addProduct(product, image?.path);
      emit(const AddProductSuccessState());
    } catch (_) {
      emit(const AddProductErrorState());
    }
  }
}
