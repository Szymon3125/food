// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:food/modules/add_product/add_product_view.dart' as _i1;
import 'package:food/modules/home/home_view.dart' as _i2;
import 'package:food/modules/login/login_view.dart' as _i3;
import 'package:food/modules/product_list/product_list_view.dart' as _i4;
import 'package:food/modules/register/register_view.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AddProductRoute.name: (routeData) {
      final args = routeData.argsAs<AddProductRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddProductView(
          key: args.key,
          refresh: args.refresh,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginView(),
      );
    },
    ProductListRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProductListView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RegisterView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddProductView]
class AddProductRoute extends _i6.PageRouteInfo<AddProductRouteArgs> {
  AddProductRoute({
    _i7.Key? key,
    required void Function() refresh,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AddProductRoute.name,
          args: AddProductRouteArgs(
            key: key,
            refresh: refresh,
          ),
          initialChildren: children,
        );

  static const String name = 'AddProductRoute';

  static const _i6.PageInfo<AddProductRouteArgs> page =
      _i6.PageInfo<AddProductRouteArgs>(name);
}

class AddProductRouteArgs {
  const AddProductRouteArgs({
    this.key,
    required this.refresh,
  });

  final _i7.Key? key;

  final void Function() refresh;

  @override
  String toString() {
    return 'AddProductRouteArgs{key: $key, refresh: $refresh}';
  }
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProductListView]
class ProductListRoute extends _i6.PageRouteInfo<void> {
  const ProductListRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RegisterView]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
