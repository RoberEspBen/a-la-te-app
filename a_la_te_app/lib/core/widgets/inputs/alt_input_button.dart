import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class ALTInputButtonModel {
  final String? initialValue;
  final String? value;
  final String? labelText;

  ALTInputButtonModel({
    this.initialValue,
    this.value,
    this.labelText,
  });
}

class ALTInputButton extends StatelessWidget {
  const ALTInputButton({super.key, required this.model, this.onTap});

  final ALTInputButtonModel model;
  final void Function()? onTap;

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
        GestureDetector(
          onTap: onTap,
          child: TextFormField(
            initialValue: model.initialValue,
            controller: model.value != null
                ? TextEditingController(text: model.value)
                : null,
            style: AppTextStyle.f12w500,
            enabled: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(AppSpaces.s8),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: AppColors.black2,
                ),
              ),
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.primary,
                size: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
