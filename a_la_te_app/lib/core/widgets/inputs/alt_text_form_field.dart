import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

enum ALTTextFormFieldType {
  text,
  number,
  phone,
  email,
}

class ALTTextFormFieldModel {
  ALTTextFormFieldModel({
    required this.type,
    this.initialValue,
    this.value,
    this.labelText,
    this.hintText,
    this.errorText,
    this.helperText,
    this.trailingIcon,
    this.controller,
    this.showIsValidated = false,
  });
  final ALTTextFormFieldType type;
  final String? initialValue;
  final String? value;
  final String? labelText;
  final String? hintText;
  final String? errorText;
  final String? helperText;
  final IconData? trailingIcon;
  final TextEditingController? controller;
  final bool showIsValidated;
}

class ALTTextFormField extends StatelessWidget {
  const ALTTextFormField({
    super.key,
    required this.model,
    this.onChanged,
    this.trailingIconOnPressed,
  });

  final ALTTextFormFieldModel model;
  final void Function(String)? onChanged;
  final void Function()? trailingIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.labelText ?? '',
          style: AppTextStyle.f14w600.copyWith(
            color: AppColors.primary,
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextFormField(
              initialValue: model.initialValue,
              controller: model.value != null
                  ? TextEditingController(
                      text: model.value,
                    )
                  : model.controller,
              style: AppTextStyle.f14w500,
              onChanged: onChanged,
              keyboardType: _getKeyboardTypeByType(),
              enabled: onChanged != null,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(AppSpaces.s8),
                hintText: model.hintText,
                helperText: model.helperText,
                errorText: model.errorText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.primary),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.black2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.black2),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.black2),
                ),
                fillColor: AppColors.backgroundGrey2,
                filled: onChanged == null,
                suffixIcon: model.showIsValidated
                    ? const Icon(
                        Icons.check_rounded,
                        color: AppColors.secondary,
                      )
                    : null,
              ),
            ),
            if (model.trailingIcon != null)
              IconButton(
                onPressed: trailingIconOnPressed,
                icon: Icon(
                  model.trailingIcon,
                ),
              ),
          ],
        ),
      ],
    );
  }

  TextInputType? _getKeyboardTypeByType() {
    switch (model.type) {
      case ALTTextFormFieldType.email:
        return TextInputType.emailAddress;
      case ALTTextFormFieldType.number:
        return TextInputType.number;
      case ALTTextFormFieldType.phone:
        return TextInputType.phone;
      case ALTTextFormFieldType.text:
        return TextInputType.name;
    }
  }
}
