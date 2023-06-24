import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/router/app_router.dart';

import 'data/food_repository/food_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  FoodApp({super.key})
      : _appRouter = AppRouter(),
        _foodRepository = FoodRepository();

  late final AppRouter _appRouter;
  late final FoodRepository _foodRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _foodRepository,
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        title: 'FoodApp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
