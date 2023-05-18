import 'package:a_la_te_app/core/utils/snackbar.dart';
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
            return Padding(
              padding: const EdgeInsets.all(12),
              child: MatchesList(matches: state.matches),
            );
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
