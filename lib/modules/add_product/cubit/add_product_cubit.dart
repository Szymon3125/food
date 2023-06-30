import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/food_repository/food_repository.dart';
import '../../../data/food_repository/local_storage.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit({required HddStorage foodRepository})
      : _foodRepository = foodRepository,
        super(const AddProductEditingState());

  final HddStorage _foodRepository;

  Future<void> addProduct(ProductDTO product, XFile? image) async {
    emit(const AddProductSendingState());
    try {
      if (_foodRepository.isAuthenticated.value) {
        await _foodRepository.addProduct(product, image?.path);
      } else {
        await LocalRepository().addProduct(product);
      }

      emit(const AddProductSuccessState());
    } catch (_) {
      emit(const AddProductErrorState());
    }
  }
}
