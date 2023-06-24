import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../cubit/register_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormBuilderTextField(
            name: 'email',
          ),
          FormBuilderTextField(
            name: 'password',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            obscuringCharacter: '•',
          ),
          FormBuilderTextField(
            name: 'password_repeat',
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            obscuringCharacter: '•',
          ),
          OutlinedButton(
            onPressed: _login,
            child: const Text('Zaloguj się'),
          ),
        ],
      ),
    );
  }

  Future<void> _login() async {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<RegisterCubit>().register(
            _formKey.currentState!.fields['email']?.value as String? ?? '',
            _formKey.currentState!.fields['password']?.value as String? ?? '',
          );
    }
  }
}
