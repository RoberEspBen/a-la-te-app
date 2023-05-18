import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum ALTButtonType {
  primary,
  secondary,
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
            borderRadius: BorderRadius.circular(model.borderRadius),
          ),
          backgroundColor: model.type == ALTButtonType.primary
              ? ThemeData().primaryColor
              : Colors.white,
          disabledBackgroundColor: ThemeData().primaryColor.withOpacity(0.6),
          disabledForegroundColor: Colors.white.withOpacity(0.75),
          foregroundColor: model.type == ALTButtonType.primary
              ? Colors.white
              : ThemeData().primaryColor,
          side: model.type == ALTButtonType.secondary
              ? BorderSide(
                  color: ThemeData().primaryColor,
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
