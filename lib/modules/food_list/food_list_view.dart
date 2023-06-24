import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/modules/food_list/widgets/product_list.dart';

import 'cubit/food_list_cubit.dart';

@RoutePage()
class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodListCubit()..loadProduct(),
      lazy: false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Twoje Produkty'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: BlocBuilder<FoodListCubit, FoodListState>(
              builder: (context, state) {
                if (state is FoodListLoadingState ||
                    state is FoodListInitialState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state is FoodListLoadedState) {
                  return ProductList(products: state.products);
                }

                return const Center(
                  child: Text('Ups! Coś Poszło nie tak!'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
