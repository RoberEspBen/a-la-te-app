import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/features/home/presentation/modals/club_selector_modal.dart';
import 'package:a_la_te_app/features/home/presentation/modals/date_picker_modal.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_cubit.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CreateMatchCard extends StatelessWidget {
  const CreateMatchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMatchCubit, CreateMatchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Card(
            elevation: 0,
            child: SizedBox(
              height: heightCalculate(
                context: context,
                date: state.matchDate != null,
                club: state.clubName != null,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 12,
                        ),
                        child: Text(
                          'Crear partido',
                          style: AppTextStyle.f18w700,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppColors.black2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _SelectCardButton(
                            text: 'Elegir fecha',
                            icon: Icons.calendar_month_rounded,
                            onTap: () => showDatePickerModal(
                              context: context,
                              initialActualDate:
                                  state.matchDate ?? DateTime.now(),
                              submitAction:
                                  context.read<CreateMatchCubit>().selectDate,
                            ),
                          ),
                          _SelectCardButton(
                            text: 'Elegir club',
                            icon: Icons.sports_tennis_rounded,
                            onTap: () => showClubSelectorModal(
                              context: context,
                              clubs: state.clubs,
                              currentClubSelected:
                                  state.clubName == null && state.clubs != null
                                      ? state.clubs!.first
                                      : state.clubName,
                              submitAction:
                                  context.read<CreateMatchCubit>().selectClub,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (state.matchDate != null)
                              Text(
                                'Fecha: ${DateFormat('dd/MM/yyyy').format(state.matchDate!)}',
                                style: AppTextStyle.f14w600,
                              ),
                            if (state.clubName != null)
                              Text(
                                'Club: ${state.clubName!}',
                                style: AppTextStyle.f14w600,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ALTButton(
                      model: ALTButtonModel(
                        type: ALTButtonType.bottomModal,
                        text: 'Buscar disponibilidad',
                        borderRadius: 8,
                      ),
                      onPressed:
                          state.clubName == null || state.matchDate == null
                              ? null
                              : () => context.pushNamed(
                                    AppRoute.createMatch.name,
                                  ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  double heightCalculate({
    required BuildContext context,
    required bool date,
    required bool club,
  }) {
    if (!date && !club) {
      return MediaQuery.of(context).size.height * 0.35;
    } else if (date && club) {
      return MediaQuery.of(context).size.height * 0.40;
    }
    return MediaQuery.of(context).size.height * 0.375;
  }
}

class _SelectCardButton extends StatelessWidget {
  const _SelectCardButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        color: AppColors.primary,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppTextStyle.f18w700.copyWith(
                  color: AppColors.white,
                ),
              ),
              Icon(
                icon,
                color: AppColors.white,
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
