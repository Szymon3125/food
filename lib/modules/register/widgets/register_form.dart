import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/modules/auth/cubit/auth_cubit.dart';
import 'package:food/reusable/widgets/rounded_button.dart';
import 'package:food/reusable/widgets/rounded_text_field.dart';
import 'package:food/utils/app_colors.dart';
import 'package:food/utils/validators.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  static const String email = 'email';
  static const String password = 'password';
  static const String repeat = 'repeat';

  String? errorMessage;
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (success) ...[
            const Text(
              'Konto zostało założone.\nPotwierdź adres email.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.green,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 32),
          ],
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
              if (error != null) {
                return error;
              }
              error = Validators.password(value);
              return error;
            },
          ),
          const SizedBox(height: 24),
          RoundedTextField(
            name: repeat,
            labelText: 'Pwotórz hasło',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              var error = Validators.required(value);
              if (error != null) {
                return error;
              }
              error = Validators.repeatPassword(
                  _formKey.currentState!.fields[password]?.value as String? ??
                      '',
                  value);
              return error;
            },
          ),
          const SizedBox(height: 32),
          RoundedButton(
            text: 'Zaloguj się',
            onPressed: _register,
            color: AppColors.primary2,
          ),
        ],
      ),
    );
  }

  Future<void> _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        setState(() {
          success = false;
        });
        await context.read<AuthCubit>().registerWithEmail(
              email:
                  _formKey.currentState!.fields[email]?.value as String? ?? '',
              password:
                  _formKey.currentState!.fields[password]?.value as String? ??
                      '',
            );
        setState(() {
          errorMessage = null;
          success = true;
        });
      } on AppwriteException catch (exception) {
        if (exception.code == 409) {
          setState(
              () => errorMessage = 'Użytkownik o podanym emailu już istnieje!');
        } else {
          setState(() => errorMessage = 'Ups! Coś poszło nie tak!');
        }
      } catch (_) {
        setState(() => errorMessage = 'Ups! Coś poszło nie tak!');
      }
    }
  }
}
