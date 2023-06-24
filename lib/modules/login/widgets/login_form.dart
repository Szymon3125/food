import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          OutlinedButton(
            onPressed: _loginPassword,
            child: const Text('Zaloguj się'),
          ),
          OutlinedButton(
            onPressed: _loginGoogle,
            child: const Text('Google'),
          ),
        ],
      ),
    );
  }

  Future<void> _loginPassword() async {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<LoginCubit>().loginPassword(
            _formKey.currentState!.fields['email'] as String? ?? '',
            _formKey.currentState!.fields['password'] as String? ?? '',
          );
    }
  }

  Future<void> _loginGoogle() async {
    context.read<LoginCubit>().loginGoogle();
  }
}
