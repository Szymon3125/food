import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/food_repository/food_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required HddStorage foodRepository})
      : _foodRepository = foodRepository,
        super(UnauthenticatedState()) {
    _foodRepository.isAuthenticated.addListener(() {
      if (_foodRepository.isAuthenticated.value) {
        emit(AuthenticatedState());
      } else {
        emit(UnauthenticatedState());
      }
    });
  }

  final HddStorage _foodRepository;

  Future<void> loginWithGoogle() async {
    await _foodRepository.loginWithGoogle();
  }

  Future<void> registerWithEmail({
    required String email,
    required String password,
  }) async {
    await _foodRepository.registerWithEmail(email, password);
  }

  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    await _foodRepository.loginWithEmail(email, password);
  }

  Future<void> logout() async {
    await _foodRepository.logout();
  }
}
