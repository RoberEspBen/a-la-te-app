import 'dart:async';

import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/modals/alt_modal.dart';
import 'package:a_la_te_app/core/modals/success_modal.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_cubit.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_state.dart';
import 'package:a_la_te_app/features/match/application/match_details/cubit/match_details_cubit.dart';
import 'package:a_la_te_app/features/match/application/match_details/cubit/match_details_state.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/presentation/match_details/modals/set_result_modal.dart';
import 'package:a_la_te_app/features/match/presentation/match_details/widgets/player_card.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MatchDetailsCubit(
        playerRepository: locator<PlayerRepository>(),
      )..getPlayersById(
          firstPlayerId: match.firstPlayerId,
          secondPlayerId: match.secondPlayerId,
        ),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(title: const Text('Detalles del partido')),
        body: _Body(match: match),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MatchDetailsCubit, MatchDetailsState>(
      listener: (_, state) {
        if (state.status.isLoaded &&
            state.secondPlayer != null &&
            state.joiningMatch) {
          showSuccessModal(
            context: context,
            title: '¡Te has unido al partido con éxito!',
            subtitle1: 'Podrás verlo en el apartado ',
            subtitle2: 'Tus partidos',
            subtitle3: ' en la pantalla de inicio.',
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    match.club!.clubImage ?? 'assets/images/clubs/tenis_1.jpg',
                    width: double.infinity,
                  ),
                  Container(
                    width: double.infinity,
                    color: const Color.fromRGBO(255, 255, 255, 0.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          match.club!.clubName,
                          style: AppTextStyle.f18w700,
                        ),
                        Text(
                          match.club!.clubAddress,
                          style: AppTextStyle.f14w600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 3,
                color: AppColors.black2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    _DateCard(match: match),
                    if (match.matchStatus == MatchStatus.matchPlayed)
                      _ResultCard(
                        match: match,
                      ),
                    AppSpaces.gapH8,
                    if (state.status == StateStatus.loading)
                      const Card(
                        child: CircularProgressIndicator(),
                      )
                    else if (state.status == StateStatus.loaded)
                      Column(
                        children: [
                          PlayerCard(player: state.firstPlayer!),
                          if (state.secondPlayer != null)
                            PlayerCard(player: state.secondPlayer!),
                        ],
                      )
                    else
                      Card(
                        child: Text(
                          'Usuario no encontrado',
                          style: AppTextStyle.f16w700,
                        ),
                      ),
                    AppSpaces.gapH16,
                    if (match.matchStatus == MatchStatus.matchCreated &&
                        locator<UserCubit>().state.user.id !=
                            match.firstPlayerId)
                      _JoinMatchButton(match: match),
                    if (match.matchStatus == MatchStatus.scheduledMatch &&
                        match.matchDate!.isBefore(DateTime.now()))
                      SizedBox(
                        width: double.infinity,
                        child: ALTButton(
                          model: ALTButtonModel(
                            text: 'Ingresar resultado',
                            type: ALTButtonType.primary,
                          ),
                          onPressed: () async {
                            showSetResultModal(
                              context: context,
                              match: match,
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _JoinMatchButton extends StatelessWidget {
  const _JoinMatchButton({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchCubit, MatchState>(
      builder: (context2, _) {
        return SizedBox(
          width: double.infinity,
          child: match.secondPlayerId == null
              ? ALTButton(
                  model: ALTButtonModel(
                    text: 'Unirme al partido',
                    type: ALTButtonType.primary,
                  ),
                  onPressed: () async {
                    unawaited(
                      context.read<MatchDetailsCubit>().getPlayersById(
                            firstPlayerId: match.firstPlayerId,
                            secondPlayerId: locator<UserCubit>().state.user.id,
                            joiningMatch: true,
                          ),
                    );
                    unawaited(
                      context2.read<MatchCubit>().setSecondPlayer(
                            match: match,
                            player: Player(
                              id: locator<UserCubit>().state.user.id,
                              nif: locator<UserCubit>().state.user.nif,
                              name: locator<UserCubit>().state.user.name,
                              description:
                                  locator<UserCubit>().state.user.description,
                              playerPhoto:
                                  locator<UserCubit>().state.user.userPhoto,
                              mobilePhoneNumber: locator<UserCubit>()
                                  .state
                                  .user
                                  .mobilePhoneNumber,
                              level: locator<UserCubit>().state.user.level,
                              skillfullHand:
                                  locator<UserCubit>().state.user.skillfullHand,
                              wonMatches:
                                  locator<UserCubit>().state.user.wonMatches,
                              playedMatches:
                                  locator<UserCubit>().state.user.playedMatches,
                            ),
                          ),
                    );
                    locator<UserCubit>().setNewScheduleMatch(
                      match: match.copyWith(
                        secondPlayerId: locator<UserCubit>().state.user.id,
                        secondPlayerLevel: int.parse(
                          locator<UserCubit>().state.user.level,
                        ),
                        secondPlayerName: locator<UserCubit>().state.user.name,
                        secondPlayerPhoto:
                            locator<UserCubit>().state.user.userPhoto,
                        matchStatus: MatchStatus.scheduledMatch,
                      ),
                    );
                  },
                )
              : null,
        );
      },
    );
  }
}

class _DateCard extends StatelessWidget {
  const _DateCard({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.black2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Horario del partido',
            style: AppTextStyle.f16w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('HH:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(
                    match.initialHour * 1000,
                  ),
                ),
                style: AppTextStyle.f18w500,
              ),
              AppSpaces.gapW10,
              const Text('-'),
              AppSpaces.gapW10,
              Text(
                DateFormat('HH:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(
                    match.finalHour * 1000,
                  ),
                ),
                style: AppTextStyle.f18w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    super.key,
    required this.match,
  });

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: AppColors.black2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Resultado',
            style: AppTextStyle.f16w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(match.matchResult!.length, (i) {
                return Row(
                  children: [
                    Text(
                      '${match.matchResult![i].firstPlayerGames.toString()}/${match.matchResult![i].secondPlayerGames.toString()}',
                      style: AppTextStyle.f16w700,
                    ),
                    if (i < match.matchResult!.length - 1) AppSpaces.gapW12,
                  ],
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
