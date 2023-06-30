import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/reusable/widgets/rounded_field_border.dart';
import 'package:food/utils/app_colors.dart';

class RoundedTextField extends FormBuilderField<String> {
  RoundedTextField({
    required super.name,
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    super.validator,
    this.keyboardType,
    this.obscureText = false,
    this.radius = 10,
    super.onChanged,
  }) : super(builder: (field) {
          final state = field as _RoundedTextFieldState;

          return TextField(
            onChanged: (value) => state.didChange(value),
            controller: state.controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: RoundedFieldBorder.normal(radius: radius),
              enabledBorder: RoundedFieldBorder.normal(radius: radius),
              disabledBorder: RoundedFieldBorder.normal(radius: radius),
              focusedBorder: RoundedFieldBorder.focused(radius: radius),
              focusedErrorBorder: RoundedFieldBorder.focused(radius: radius),
              errorBorder: RoundedFieldBorder.error(radius: radius),
              filled: true,
              fillColor: AppColors.grayLight,
              focusColor: AppColors.night,
              hoverColor: AppColors.night,
              labelText: labelText,
              labelStyle: const TextStyle(
                color: AppColors.secondary1,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 24.0 / 16.0,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: AppColors.secondary4,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 24.0 / 16.0,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 12,
              ),
              errorText: state.errorText,
              errorStyle: const TextStyle(height: 1),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          );
        });

  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double radius;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  FormBuilderFieldState<FormBuilderField<String>, String> createState() =>
      _RoundedTextFieldState();
}

class _RoundedTextFieldState
    extends FormBuilderFieldState<FormBuilderField<String>, String> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didChange(String? value) {
    super.didChange(value);
    controller.value = controller.value.copyWith(text: value ?? '');
  }

  @override
  bool validate({
    bool clearCustomError = true,
    bool focusOnInvalid = false,
    bool autoScrollWhenFocusOnInvalid = false,
  }) {
    return super.validate(
      clearCustomError: clearCustomError,
      focusOnInvalid: focusOnInvalid,
      autoScrollWhenFocusOnInvalid: autoScrollWhenFocusOnInvalid,
    );
  }
}
