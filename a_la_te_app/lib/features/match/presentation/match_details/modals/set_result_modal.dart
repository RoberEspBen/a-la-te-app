import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/modals/success_modal.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/core/widgets/inputs/alt_text_form_field.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showSetResultModal({
  required BuildContext context,
  required MatchModel match,
}) {
  showALTModal(
    context: context,
    content: _SetResultContent(match: match),
  );
}

class _SetResultContent extends StatefulWidget {
  const _SetResultContent({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  State<_SetResultContent> createState() => _SetResultContentState();
}

class _SetResultContentState extends State<_SetResultContent> {
  int? set1player1;
  int? set1player2;
  int? set2player1;
  int? set2player2;
  int? set3player1;
  int? set3player2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.match.firstPlayerPhoto ??
                          'assets/images/user/user_default1.png',
                      width: 50,
                    ),
                    AppSpaces.gapH4,
                    Text(
                      widget.match.firstPlayerName.split(' ')[0],
                      style: AppTextStyle.f12w500,
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set1player1 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set2player1 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set3player1 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              AppSpaces.gapW20,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      widget.match.secondPlayerPhoto ??
                          'assets/images/user/user_default1.png',
                      width: 50,
                    ),
                    AppSpaces.gapH4,
                    Text(
                      widget.match.secondPlayerName!.split(' ')[0],
                      style: AppTextStyle.f12w500,
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set1player2 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set2player2 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: ALTTextFormField(
                        model: ALTTextFormFieldModel(
                          type: ALTTextFormFieldType.setNumber,
                        ),
                        onChanged: (value) {
                          setState(() {
                            set3player2 =
                                value.isNotEmpty ? int.parse(value) : 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
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
              text: 'Guardar',
            ),
            onPressed: isValidResult()
                ? () {
                    locator<UserCubit>().setMatchResult(
                      match: widget.match,
                      set1player1: set1player1!,
                      set1player2: set1player2!,
                      set2player1: set2player1!,
                      set2player2: set2player2!,
                      set3player1: set3player1,
                      set3player2: set3player2,
                    );
                    showSuccessModal(
                      context: context,
                      title: 'Resultado añadido con éxito',
                      subtitle1: 'Podrás ver el partido en ',
                      subtitle2: 'Tu Perfil ',
                      subtitle3: ' junto con el resto de partidos jugados.',
                    );
                  }
                : null,
          ),
        ),
      ],
    );
  }

  bool isValidResult() {
    if (set1player1 != null &&
        set1player2 != null &&
        set2player1 != null &&
        set2player2 != null) {
      if ((set1player1! > set1player2! && set2player1! > set2player2!) ||
          (set1player1! < set1player2! && set2player1! < set2player2!) ||
          (set3player1 != null && set3player2 != null)) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
