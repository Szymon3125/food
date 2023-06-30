import 'package:flutter/material.dart';
import 'package:food/reusable/widgets/rounded_field_border.dart';

import 'package:intl/intl.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../utils/app_colors.dart';

class RoudnedDatePicker extends FormBuilderField<DateTime> {
  RoudnedDatePicker({
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
  }) : super(
          builder: (field) {
            final state = field as _RoudnedDatePickerState;

            return TextField(
              focusNode: state.effectiveFocusNode,
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
          },
        );

  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double radius;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  FormBuilderFieldState<RoudnedDatePicker, DateTime> createState() =>
      _RoudnedDatePickerState();
}

class _RoudnedDatePickerState
    extends FormBuilderFieldState<RoudnedDatePicker, DateTime> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    effectiveFocusNode.addListener(_handleFocus);
  }

  @override
  void dispose() {
    effectiveFocusNode.removeListener(_handleFocus);
    controller.dispose();
    super.dispose();
  }

  Future<void> _handleFocus() async {
    if (effectiveFocusNode.hasFocus && enabled) {
      effectiveFocusNode.unfocus();
      await onShowPicker(context, value);
    }
  }

  Future<DateTime?> onShowPicker(
      BuildContext context, DateTime? currentValue) async {
    currentValue = value;

    DateTime? newValue = await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.day,
      helpText: 'Wybierz datę ważności',
      initialDate: value ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      cancelText: 'Anuluj',
      confirmText: 'Wybierz',
    );

    final finalValue = newValue ?? currentValue;
    didChange(finalValue);
    return finalValue;
  }

  @override
  void didChange(DateTime? value) {
    super.didChange(value);
    controller.text =
        (value == null) ? '' : DateFormat('dd.MM.y').format(value);
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
