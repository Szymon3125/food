import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:food/data/food_repository/models/product_dto.dart';
import 'package:food/modules/add_product/cubit/add_product_cubit.dart';
import 'package:food/reusable/widgets/rounded_date_picker.dart';
import 'package:food/reusable/widgets/rounded_text_field.dart';
import 'package:food/utils/app_colors.dart';
import 'package:food/utils/validators.dart';
import 'package:image_picker/image_picker.dart';

import '../../../reusable/widgets/rounded_button.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({super.key});

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  static const String _name = 'name';
  static const String _expiration = 'expiration';
  static const String _amount = 'amount';
  static const String _unit = 'unit';

  OverlayEntry? imageOverlay;
  OverlayEntry? stateOverlay;
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: BlocConsumer<AddProductCubit, AddProductState>(
        listener: (context, state) {
          stateOverlay?.remove();
          if (state is AddProductSendingState) {
            stateOverlay = OverlayEntry(
              builder: (context) => DecoratedBox(
                decoration:
                    BoxDecoration(color: AppColors.night.withOpacity(0.2)),
                child: const SafeArea(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            );
            Overlay.of(context).insert(stateOverlay!);
          }
          if (state is AddProductSuccessState) {
            AutoRouter.of(context).pop();
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              const Text(
                'Dodawanie produktu',
                style: TextStyle(
                  color: AppColors.primary1,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  height: 24.0 / 20.0,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(75),
                        child: Material(
                          color: AppColors.gray,
                          child: InkWell(
                            onTap: _addPhoto,
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: image != null
                                  ? Image.file(
                                      File(image!.path),
                                      fit: BoxFit.cover,
                                    )
                                  : const Icon(
                                      Icons.add_photo_alternate_outlined,
                                      size: 64,
                                      color: AppColors.white,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      RoundedTextField(
                        name: _name,
                        labelText: 'Nazwa produktu ★',
                        validator: Validators.required,
                      ),
                      const SizedBox(height: 24),
                      RoudnedDatePicker(
                        name: _expiration,
                        labelText: 'Data ważności ★',
                        validator: Validators.required,
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: RoundedTextField(
                              name: _amount,
                              keyboardType: TextInputType.number,
                              labelText: 'Ilość',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: RoundedTextField(
                              name: _unit,
                              labelText: 'Jednostka',
                            ),
                          ),
                        ],
                      ),
                      if (state is AddProductErrorState) ...[
                        const SizedBox(height: 32),
                        const Text(
                          'Ups! Coś poszło nie tak!',
                          style: TextStyle(
                            color: AppColors.red,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              RoundedButton(
                text: 'Wyczyść',
                onPressed: _clear,
                color: AppColors.secondary4,
              ),
              const SizedBox(height: 24),
              RoundedButton(
                text: 'Dodaj',
                onPressed: _submit,
                color: AppColors.primary2,
              ),
            ],
          );
        },
      ),
    );
  }

  void _addPhoto() {
    imageOverlay = OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => imageOverlay?.remove(),
        child: DecoratedBox(
          decoration: BoxDecoration(color: AppColors.night.withOpacity(0.2)),
          child: SafeArea(
            child: Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RoundedButton(
                        text: 'Zrób zdjęcie',
                        onPressed: () => _pickImage(ImageSource.camera),
                        color: AppColors.primary2,
                      ),
                      const SizedBox(height: 24),
                      RoundedButton(
                        text: 'Wybierz z galerii',
                        onPressed: () => _pickImage(ImageSource.gallery),
                        color: AppColors.primary2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(imageOverlay!);
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      setState(() => this.image = image);
    } on PlatformException catch (_) {}
    imageOverlay?.remove();
  }

  void _clear() {
    _formKey.currentState?.reset();
  }

  Future<void> _submit() async {
    if (_formKey.currentState?.validate(focusOnInvalid: false) ?? false) {
      final name = _formKey.currentState?.fields[_name]?.value as String;
      final expiration =
          _formKey.currentState?.fields[_expiration]?.value as DateTime;
      final amount = double.tryParse(
          _formKey.currentState?.fields[_amount]?.value as String? ?? '');
      final unit = _formKey.currentState?.fields[_unit]?.value as String?;

      final product = ProductDTO(
        id: '',
        name: name,
        expiration: expiration.millisecondsSinceEpoch,
        amount: amount,
        unit: unit,
        image: null,
      );

      await context.read<AddProductCubit>().addProduct(product, image);
    }
  }
}
