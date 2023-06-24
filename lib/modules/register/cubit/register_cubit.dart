import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/food_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required FoodRepository foodRepository})
      : _foodRepository = foodRepository,
        super(const RegisterState());

  final FoodRepository _foodRepository;

  Future<void> register(String email, String password) async {
    emit(const RegisterLoadingState());
    try {
      _foodRepository.registerWithEmail(email, password);
      _foodRepository.loginWithEmail(email, password);
      emit(const RegisterSuccessState());
    } catch (_) {
      emit(const RegisterErrorState());
    }
  }
}
