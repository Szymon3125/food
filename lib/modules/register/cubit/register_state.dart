part of 'register_cubit.dart';

class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object?> get props => [];
}

class RegisterLoadingState extends RegisterState {
  const RegisterLoadingState();
}

class RegisterSuccessState extends RegisterState {
  const RegisterSuccessState();
}

class RegisterErrorState extends RegisterState {
  const RegisterErrorState({
    this.message,
  });

  final String? message;

  @override
  List<Object?> get props => [message];
}
