import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:flutter/material.dart';

void showALTModal({
  required BuildContext context,
  required Widget content,
  EdgeInsets? padding,
  EdgeInsets? margin,
  bool barrierDismissible = true,
}) {
  showDialog<void>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) {
      return Center(
        child: Card(
          surfaceTintColor: AppColors.white,
          margin: margin ?? const EdgeInsets.all(AppSpaces.s48),
          child: SingleChildScrollView(
            child: Padding(
              padding: padding ??
                  const EdgeInsets.all(
                    AppSpaces.s16,
                  ),
              child: content,
            ),
          ),
        ),
      );
    },
  );
}
