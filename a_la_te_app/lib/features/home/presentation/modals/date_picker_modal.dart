import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:go_router/go_router.dart';

void showDatePickerModal({
  required BuildContext context,
  required DateTime initialActualDate,
  required Future<void> Function({
    DateTime? date,
  })
      submitAction,
}) {
  showALTModal(
    context: context,
    content: _ModalBody(
      initialActualDate: initialActualDate,
      submitAction: submitAction,
    ),
  );
}

class _ModalBody extends StatefulWidget {
  const _ModalBody({
    super.key,
    required this.initialActualDate,
    required this.submitAction,
  });
  final DateTime initialActualDate;
  final Future<void> Function({
    DateTime? date,
  }) submitAction;

  @override
  State<_ModalBody> createState() => __ModalBodyState();
}

class __ModalBodyState extends State<_ModalBody> {
  DateTime? localSelectedDate;
  @override
  Widget build(BuildContext context) {
    localSelectedDate ??= widget.initialActualDate;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 300,
          child: DayPicker.single(
            selectedDate: localSelectedDate!,
            firstDate: DateTime.now(),
            lastDate: DateTime(
              2023,
              12,
              31,
            ),
            datePickerStyles: _getSyle(),
            onChanged: _updateSelectedDate,
          ),
        ),
        const Divider(
          thickness: 0.75,
          color: AppColors.primary,
        ),
        AppSpaces.gapH12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ALTButton(
                model: ALTButtonModel(
                  type: ALTButtonType.secondary,
                  text: 'Cancelar',
                ),
                onPressed: context.pop,
              ),
            ),
            AppSpaces.gapW24,
            Expanded(
              child: ALTButton(
                model: ALTButtonModel(
                  type: ALTButtonType.primary,
                  text: 'Aceptar',
                ),
                onPressed: () {
                  widget.submitAction(date: localSelectedDate);
                  context.pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  DatePickerRangeStyles _getSyle() {
    return DatePickerRangeStyles(
      displayedPeriodTitle: AppTextStyle.f16w700.copyWith(
        color: AppColors.black,
      ),
      disabledDateStyle: AppTextStyle.f16w500.copyWith(
        color: AppColors.black3,
      ),
      currentDateStyle: AppTextStyle.f16w500.copyWith(
        color: AppColors.black,
      ),
      defaultDateTextStyle: AppTextStyle.f16w500.copyWith(
        color: AppColors.black,
      ),
      selectedDateStyle: AppTextStyle.f16w700.copyWith(
        color: AppColors.white,
      ),
      selectedPeriodEndTextStyle: AppTextStyle.f16w700.copyWith(
        color: Colors.white,
      ),
      selectedPeriodMiddleTextStyle: AppTextStyle.f16w700.copyWith(
        color: Colors.white,
      ),
      selectedPeriodStartTextStyle: AppTextStyle.f16w700.copyWith(
        color: Colors.white,
      ),
      selectedSingleDateDecoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      selectedPeriodStartDecoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(20),
          bottomStart: Radius.circular(20),
        ),
      ),
      selectedPeriodLastDecoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(20),
          bottomEnd: Radius.circular(20),
        ),
      ),
      selectedPeriodMiddleDecoration: const BoxDecoration(
        color: AppColors.primary,
        border: Border.symmetric(
          horizontal: BorderSide(color: AppColors.primary),
        ),
      ),
      dayHeaderStyle: DayHeaderStyle(
        textStyle: AppTextStyle.f14w500.copyWith(color: AppColors.primary),
      ),
      dayHeaderTitleBuilder: _dayHeaderTitleBuilder,
      firstDayOfWeekIndex: 1,
    );
  }

  void _updateSelectedDate(DateTime newTime) {
    setState(() {
      localSelectedDate = newTime;
    });
  }

  String _dayHeaderTitleBuilder(
    int dayOfTheWeek,
    List<String> localizedHeaders,
  ) {
    return localizedHeaders[dayOfTheWeek].substring(0, 3);
  }
}
