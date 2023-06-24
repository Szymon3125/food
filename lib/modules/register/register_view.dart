import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/modules/register/cubit/register_cubit.dart';
import 'package:food/modules/register/widgets/register_form.dart';

import '../../data/food_repository/food_repository.dart';

@RoutePage()
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        foodRepository: RepositoryProvider.of<FoodRepository>(context),
      ),
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<RegisterCubit, RegisterState>(
            listener: (context, state) {
              if (state is RegisterSuccessState) {
                AutoRouter.of(context).pop();
              }
            },
            builder: (context, state) {
              return Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Column(
                      children: [
                        if (state is RegisterErrorState)
                          Text(state.message ?? 'Ups! Coś poszło nie tak!'),
                        const RegisterForm(),
                      ],
                    ),
                  ),
                  if (state is RegisterLoadingState)
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
