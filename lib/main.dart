import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/router/app_router.dart';
import 'package:food/utils/app_bloc_observer.dart';
import 'package:food/utils/app_colors.dart';

import 'data/food_repository/food_repository.dart';
import 'modules/auth/cubit/auth_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();
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
      child: BlocProvider(
        create: (context) => AuthCubit(
          foodRepository: _foodRepository,
        ),
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
          title: 'FoodApp',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary1),
            scaffoldBackgroundColor: AppColors.white,
          ),
        ),
      ),
    );
  }
}
