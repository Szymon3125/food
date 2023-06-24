import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/food_repository/food_repository.dart';
import 'package:food/modules/login/widgets/login_form.dart';

import 'cubit/login_cubit.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        foodRepository: RepositoryProvider.of<FoodRepository>(context),
      ),
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                AutoRouter.of(context).pop();
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      children: [
                        if (state is LoginErrorState)
                          Text(state.message ?? 'Ups! Coś poszło nie tak!'),
                        const LoginForm(),
                      ],
                    ),
                  ),
                  if (state is LoginLoadingState)
                    const CircularProgressIndicator(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
