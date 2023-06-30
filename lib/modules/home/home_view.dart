import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/modules/home/widgets/logo.dart';
import 'package:food/reusable/widgets/rounded_button.dart';
import 'package:food/router/app_router.gr.dart';
import 'package:food/utils/app_colors.dart';

import '../auth/cubit/auth_cubit.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<ProductDTO> products = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            AutoRouter.of(context)
              ..popUntilRoot()
              ..replace(const ProductListRoute());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Logo(),
                  const SizedBox(height: 32),
                  RoundedButton(
                    onPressed: () =>
                        AutoRouter.of(context).push(const RegisterRoute()),
                    text: 'Zarejestruj się',
                    color: AppColors.primary2,
                  ),
                  const SizedBox(height: 16),
                  RoundedButton(
                    text: 'Konto Google',
                    onPressed: () =>
                        context.read<AuthCubit>().loginWithGoogle(),
                    color: AppColors.primary4,
                  ),
                  const SizedBox(height: 16),
                  RoundedButton(
                    text: 'Gość',
                    onPressed: () => AutoRouter.of(context)
                      ..popUntilRoot()
                      ..replace(const ProductListRoute()),
                    color: AppColors.secondary4,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Masz już konto?',
                        style: TextStyle(
                          color: AppColors.night,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 24.0 / 18.0,
                        ),
                      ),
                      const SizedBox(width: 4),
                      TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.all(8),
                          ),
                        ),
                        onPressed: () =>
                            AutoRouter.of(context).push(const LoginRoute()),
                        child: const Text(
                          'Zaloguj się',
                          style: TextStyle(
                            color: AppColors.secondary1,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.secondary1,
                            decorationThickness: 1.5,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
