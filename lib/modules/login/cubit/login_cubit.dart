import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/food_repository/food_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required FoodRepository foodRepository})
      : _foodRepository = foodRepository,
        super(const LoginState());

  final FoodRepository _foodRepository;

  Future<void> loginPassword(String email, String password) async {
    emit(const LoginLoadingState());
    try {
      _foodRepository.loginWithEmail(email, password);
      emit(const LoginSuccessState());
    } catch (_) {
      emit(const LoginErrorState());
    }
  }

  Future<void> loginGoogle() async {
    emit(const LoginLoadingState());
    try {
      _foodRepository.loginWithGoogle();
      emit(const LoginSuccessState());
    } catch (_) {
      emit(const LoginErrorState());
    }
  }
}
