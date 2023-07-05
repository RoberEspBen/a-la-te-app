import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/utils/time_of_day_extension.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/core/widgets/inputs/alt_text_form_field.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_cubit.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CreateMatchScreen extends StatelessWidget {
  const CreateMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          'Crear partido',
          style: AppTextStyle.f18w700,
        ),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateMatchCubit, CreateMatchState>(
      listener: (_, state) {
        if (state.status.isLoaded) {
          showALTModal(
            context: context,
            content: const _Content(),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Datos del partido',
                style: AppTextStyle.f14w700,
              ),
              AppSpaces.gapH10,
              Text(
                'Comprueba que la fecha y club seleccionados son los correctos. Si deseas hacer algún cambio vuelve a la pantalla anterior para modificar los valores.',
                style: AppTextStyle.f12w500,
              ),
              AppSpaces.gapH16,
              ALTTextFormField(
                model: ALTTextFormFieldModel(
                  type: ALTTextFormFieldType.text,
                  labelText: 'Día del partido',
                  value: DateFormat('dd/MM/yyyy').format(state.matchDate!),
                ),
              ),
              AppSpaces.gapH16,
              ALTTextFormField(
                model: ALTTextFormFieldModel(
                  type: ALTTextFormFieldType.text,
                  labelText: 'Club',
                  value: state.selectedClub!.clubName,
                ),
              ),
              AppSpaces.gapH16,
              Text(
                'Horarios disponibles',
                style: AppTextStyle.f14w700,
              ),
              AppSpaces.gapH10,
              Text(
                'Selecciona uno de los siguientes horarios disponibles para el día y club seleccionados.',
                style: AppTextStyle.f12w500,
              ),
              AppSpaces.gapH16,
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _CardTime(
                      initialTime: '09:00',
                      finalTime: '11:00',
                    ),
                    AppSpaces.gapW4,
                    _CardTime(
                      initialTime: '11:00',
                      finalTime: '13:00',
                    ),
                    AppSpaces.gapW4,
                    _CardTime(
                      initialTime: '17:00',
                      finalTime: '19:00',
                    ),
                    AppSpaces.gapW4,
                    _CardTime(
                      initialTime: '19:00',
                      finalTime: '21:00',
                    ),
                    AppSpaces.gapW4,
                    _CardTime(
                      initialTime: '21:00',
                      finalTime: '23:00',
                    ),
                  ],
                ),
              ),
              AppSpaces.gapH28,
              SizedBox(
                width: double.maxFinite,
                child: ALTButton(
                  model: ALTButtonModel(
                    type: ALTButtonType.primary,
                    text: 'Crear partido',
                  ),
                  onPressed: state.matchInitialHour != null &&
                          state.matchFinalHour != null
                      ? () => context.read<CreateMatchCubit>().createMatch()
                      : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    super.key,
  });

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
            'Partido creado correctamente',
            style: AppTextStyle.f14w700,
          ),
          AppSpaces.gapH10,
          RichText(
            text: TextSpan(
              style: AppTextStyle.f14w500.copyWith(
                color: Colors.black,
              ),
              children: [
                const TextSpan(
                  text: 'Podrás verlo en el apartado ',
                ),
                TextSpan(
                  text: 'Tus partidos',
                  style: AppTextStyle.f14w600Italic,
                ),
                const TextSpan(
                  text: ' en la pantalla de inicio.',
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
                context.read<CreateMatchCubit>().reset();
                context.goNamed(AppRoute.startApp.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CardTime extends StatelessWidget {
  const _CardTime({
    super.key,
    required this.initialTime,
    required this.finalTime,
  });

  final String initialTime;
  final String finalTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMatchCubit, CreateMatchState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<CreateMatchCubit>().selectTime(
                  initialTime: initialTime,
                  finalTime: finalTime,
                );
          },
          child: Card(
            elevation: 0,
            color: state.matchInitialHour != null &&
                    state.matchInitialHour!.toCompareString() == initialTime
                ? AppColors.primary
                : AppColors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: AppColors.black,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    '$initialTime\n-\n$finalTime',
                    textAlign: TextAlign.center,
                    style: state.matchInitialHour != null &&
                            state.matchInitialHour!.toCompareString() ==
                                initialTime
                        ? AppTextStyle.f14w600.copyWith(color: AppColors.white)
                        : AppTextStyle.f14w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
