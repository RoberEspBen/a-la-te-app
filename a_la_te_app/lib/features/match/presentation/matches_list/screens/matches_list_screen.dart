import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/utils/snackbar.dart';
import 'package:a_la_te_app/core/widgets/inputs/alt_search_field.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_cubit.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_state.dart';
import 'package:a_la_te_app/features/match/presentation/matches_list/widgets/matches_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchesListScreen extends StatelessWidget {
  const MatchesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MatchCubit, MatchState>(
      listenWhen: (context, state) {
        return state.status.isError;
      },
      listener: (context, state) {
        if (state.status.isError) {
          context.showSnackBar(message: state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state.status.isInitial || state.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isLoaded) {
          if (state.matches.isEmpty) {
            return const Center(
              child: Text('No hay partidos'),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Partidos disponibles',
                      style: AppTextStyle.f14w700,
                    ),
                    AppSpaces.gapH10,
                    Text(
                      'Aquí encontrarás todos los partidos abiertos ordenados por su fecha de juego. Si quieres hacer una búsqueda más directa también podrás filtrar por nombre de jugador o club.',
                      style: AppTextStyle.f12w500,
                    ),
                    AppSpaces.gapH16,
                    ALTSearchField(
                      onChanged: context.read<MatchCubit>().filterMatchesList,
                    ),
                    AppSpaces.gapH16,
                    MatchesList(matches: state.filterMatches),
                  ],
                ),
              ),
            );
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
