import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/modules/auth/cubit/auth_cubit.dart';
import 'package:food/reusable/widgets/rounded_button.dart';
import 'package:food/reusable/widgets/rounded_text_field.dart';
import 'package:food/utils/app_colors.dart';
import 'package:food/utils/validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  static const String email = 'email';
  static const String password = 'password';

  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (errorMessage != null) ...[
            Text(
              errorMessage!,
              style: const TextStyle(
                color: AppColors.red,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 32),
          ],
          RoundedTextField(
            name: email,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              var error = Validators.required(value);
              if (error != null) {
                return error;
              }
              error = Validators.email(value);
              return error;
            },
          ),
          const SizedBox(height: 24),
          RoundedTextField(
            name: password,
            labelText: 'Hasło',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              var error = Validators.required(value);
              return error;
            },
          ),
          const SizedBox(height: 32),
          RoundedButton(
            text: 'Zaloguj się',
            onPressed: _login,
            color: AppColors.primary2,
          ),
        ],
      ),
    );
  }

  Future<void> _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await context.read<AuthCubit>().loginWithEmail(
              email:
                  _formKey.currentState!.fields[email]?.value as String? ?? '',
              password:
                  _formKey.currentState!.fields[password]?.value as String? ??
                      '',
            );
      } on AppwriteException catch (exception) {
        if (exception.code == 400 || exception.code == 401) {
          setState(() => errorMessage = 'Błędny login lub hasło!');
        } else {
          setState(() => errorMessage = 'Ups! Coś poszło nie tak!');
        }
      } catch (_) {
        setState(() => errorMessage = 'Ups! Coś poszło nie tak!');
      }
    }
  }
}
