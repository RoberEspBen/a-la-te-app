import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

enum ALTButtonType {
  primary,
  secondary,
  bottomModal,
}

enum ALTButtonSize {
  tight,
  wide,
}

class ALTButtonModel {
  ALTButtonModel({
    required this.type,
    required this.text,
    this.size = ALTButtonSize.wide,
    this.leftIcon,
    this.rightIcon,
    this.isLoading = false,
    this.borderRadius = 32,
  });
  final ALTButtonType type;
  final ALTButtonSize size;
  final String text;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final bool isLoading;
  final double borderRadius;
}

class ALTButton extends StatelessWidget {
  const ALTButton({
    super.key,
    required this.model,
    this.onPressed,
  });

  final ALTButtonModel model;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: model.size == ALTButtonSize.wide ? 40 : 30,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: model.type != ALTButtonType.bottomModal
                ? BorderRadius.circular(model.borderRadius)
                : BorderRadius.vertical(
                    bottom: Radius.circular(model.borderRadius),
                  ),
          ),
          backgroundColor: model.type != ALTButtonType.secondary
              ? AppColors.primary
              : Colors.white,
          disabledBackgroundColor: AppColors.primary.withOpacity(0.4),
          disabledForegroundColor: Colors.white.withOpacity(0.6),
          foregroundColor: model.type != ALTButtonType.secondary
              ? Colors.white
              : AppColors.primary,
          side: model.type == ALTButtonType.secondary
              ? const BorderSide(
                  color: AppColors.primary,
                )
              : null,
        ),
        child: !model.isLoading
            ? _getButtonContent(
                model.size,
                model.text,
                model.leftIcon,
                model.rightIcon,
              )
            : const CircularProgressIndicator(),
      ),
    );
  }

  Widget _getButtonContent(
    ALTButtonSize size,
    String text,
    IconData? leftIcon,
    IconData? rightIcon,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leftIcon != null)
          Icon(
            leftIcon,
            size: 20,
          ),
        Text(
          text,
          style: AppTextStyle.f14w600,
        ),
        if (rightIcon != null)
          Icon(
            rightIcon,
            size: 20,
          )
      ],
    );
  }
}
