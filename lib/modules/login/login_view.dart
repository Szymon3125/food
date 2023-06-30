import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food/modules/login/widgets/login_form.dart';
import 'package:food/reusable/widgets/custom_app_bar.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: LoginForm(),
        ),
      ),
    );
  }
}
