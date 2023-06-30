import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/modules/add_product/cubit/add_product_cubit.dart';
import 'package:food/modules/add_product/widgets/add_product_form.dart';

import '../../data/food_repository/food_repository.dart';
import '../../reusable/widgets/custom_app_bar.dart';

@RoutePage()
class AddProductView extends StatelessWidget {
  const AddProductView({
    super.key,
    required this.refresh,
  });

  final void Function() refresh;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddProductCubit(
        foodRepository: RepositoryProvider.of<HddStorage>(context),
      ),
      lazy: false,
      child: SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: AddProductForm(
              refresh: refresh,
            ),
          ),
        ),
      ),
    );
  }
}
