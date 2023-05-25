import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/utils/snackbar.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/player/application/cubit/player_profile_cubit.dart';
import 'package:a_la_te_app/features/player/application/cubit/player_profile_state.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/profile/presentation/widgets/horizontal_matches_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerProfileScreen extends StatelessWidget {
  const PlayerProfileScreen({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerProfileCubit(
        matchRepository: locator<MatchRepository>(),
      )..init(
          player.id,
        ),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(title: const Text('Detalles del partido')),
        body: _Body(
          player: player,
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.player,
  });

  final Player player;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayerProfileCubit, PlayerProfileState>(
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
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      player.playerPhoto ??
                          'assets/images/user/user_default1.png',
                      width: 70,
                    ),
                    AppSpaces.gapW16,
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            player.name,
                            style: AppTextStyle.f16w700,
                          ),
                          if (player.description != null)
                            Text(
                              player.description!,
                              style: AppTextStyle.f12w400,
                            ),
                        ],
                      ),
                    )
                  ],
                ),
                AppSpaces.gapH16,
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Partidos jugados',
                            style: AppTextStyle.f14w500,
                          ),
                          Text(
                            player.playedMatches.toString(),
                            style: AppTextStyle.f14w700,
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 2,
                        color: AppColors.black2,
                      ),
                      Column(
                        children: [
                          Text(
                            'Partidos ganados',
                            style: AppTextStyle.f14w500,
                          ),
                          Text(
                            player.wonMatches.toString(),
                            style: AppTextStyle.f14w700,
                          ),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 2,
                        color: AppColors.black2,
                      ),
                      Column(
                        children: [
                          Text(
                            'Mano',
                            style: AppTextStyle.f14w500,
                          ),
                          Text(
                            player.skillfullHand,
                            style: AppTextStyle.f14w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AppSpaces.gapH24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Últimos partidos',
                      style: AppTextStyle.f16w700,
                    ),
                    ALTButton(
                      model: ALTButtonModel(
                        size: ALTButtonSize.tight,
                        type: ALTButtonType.secondary,
                        text: 'Ver todos',
                      ),
                      onPressed: () => print('jiji'),
                    ),
                  ],
                ),
                if (state.matchesPlayed.isEmpty)
                  const Center(
                    child: Text('No has jugado ningún partido'),
                  )
                else
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: HorizontalMatchesList(
                        matches: state.matchesPlayed,
                        playerId: player.id,
                      ),
                    ),
                  )
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
