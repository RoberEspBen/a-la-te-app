import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showSuccessModal({
  required BuildContext context,
  required String title,
  String? subtitle1,
  String? subtitle2,
  String? subtitle3,
}) {
  showALTModal(
    context: context,
    content: _Content(
      title: title,
      subtitle1: subtitle1,
      subtitle2: subtitle2,
      subtitle3: subtitle3,
    ),
  );
}

class _Content extends StatelessWidget {
  const _Content({
    super.key,
    required this.title,
    this.subtitle1,
    this.subtitle2,
    this.subtitle3,
  });

  final String title;
  final String? subtitle1;
  final String? subtitle2;
  final String? subtitle3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Icon(
            Icons.check_circle_outline_outlined,
            color: AppColors.primary,
            size: 80,
          ),
          AppSpaces.gapH16,
          Text(
            title,
            style: AppTextStyle.f14w700,
          ),
          AppSpaces.gapH10,
          RichText(
            text: TextSpan(
              style: AppTextStyle.f14w500.copyWith(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: subtitle1 ?? '',
                ),
                TextSpan(
                  text: subtitle2 ?? '',
                  style: AppTextStyle.f14w600Italic,
                ),
                TextSpan(
                  text: subtitle3 ?? '',
                ),
              ],
            ),
          ),
          AppSpaces.gapH16,
          SizedBox(
            width: double.maxFinite,
            child: ALTButton(
              model: ALTButtonModel(
                type: ALTButtonType.primary,
                text: 'Volver a inicio',
              ),
              onPressed: () {
                context.goNamed(AppRoute.startApp.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
