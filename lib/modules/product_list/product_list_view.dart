import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/modules/auth/cubit/auth_cubit.dart';
import 'package:food/modules/product_list/widgets/product_list.dart';
import 'package:food/reusable/painters/log_out_painter.dart';
import 'package:food/router/app_router.gr.dart';
import '../../data/food_repository/food_repository.dart';
import '../../reusable/widgets/custom_app_bar.dart';
import 'cubit/product_list_cubit.dart';

@RoutePage()
class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductListCubit(
        foodRepository: RepositoryProvider.of<HddStorage>(context),
      )..loadProducts(),
      lazy: false,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            actions: [
              TextButton(
                onPressed: () => _logOut(context),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CustomPaint(
                    painter: LogOutPainter(),
                  ),
                ),
              ),
            ],
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: ProductList(),
          ),
        ),
      ),
    );
  }

  Future<void> _logOut(
    BuildContext context,
  ) async {
    final router = AutoRouter.of(context);

    await context.read<AuthCubit>().logout();
    router
      ..popUntilRoot()
      ..replace(const HomeRoute());
  }
}
