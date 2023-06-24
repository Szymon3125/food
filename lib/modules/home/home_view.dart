import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/reusable/widgets/rounded_button.dart';
import 'package:food/router/app_router.gr.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const LoginRoute()),
                text: 'Zaloguj się',
              ),
              RoundedButton(
                text: 'Zarejestruj się',
                onPressed: () =>
                    AutoRouter.of(context).push(const RegisterRoute()),
              ),
              RoundedButton(
                text: 'Kontynuuj jako gość',
                onPressed: () =>
                    AutoRouter.of(context).push(const RegisterRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
