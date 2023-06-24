import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/food_repository/food_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required FoodRepository foodRepository})
      : _foodRepository = foodRepository,
        super(UnauthenticatedState());

  final FoodRepository _foodRepository;

  Future<void> loginWithGoogle() async {
    if (state is AuthenticatedState) {
      return;
    }

    _foodRepository.loginWithGoogle();
    emit(AuthenticatedState());
  }

  Future<void> registerWithEmail({
    required String email,
    required String password,
  }) async {
    if (state is AuthenticatedState) {
      return;
    }

    _foodRepository.registerWithEmail(email, password);
  }

  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    if (state is AuthenticatedState) {
      return;
    }

    _foodRepository.loginWithEmail(email, password);
    emit(AuthenticatedState());
  }

  Future<void> logout() async {
    if (state is UnauthenticatedState) {
      return;
    }

    _foodRepository.logout();
    emit(UnauthenticatedState());
  }
}
