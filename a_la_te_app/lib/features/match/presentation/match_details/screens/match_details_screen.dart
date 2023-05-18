import 'package:a_la_te_app/core/constants/enums/state_status.dart';
import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/core/widgets/buttons/alt_button.dart';
import 'package:a_la_te_app/features/match/application/match_details/cubit/match_details_cubit.dart';
import 'package:a_la_te_app/features/match/application/match_details/cubit/match_details_state.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/presentation/match_details/widgets/player_card.dart';
import 'package:a_la_te_app/features/player/domain/repository/player_repository.dart';
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
      )..getPlayerById(id: match.firstPlayerId),
      child: Scaffold(
        backgroundColor: AppColors.backgroundGrey,
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
    return BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
      builder: (context, state) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  match.clubImage ?? 'assets/images/clubs/tenis_las_torres.jpg',
                  width: double.infinity,
                ),
                Container(
                  width: double.infinity,
                  color: const Color.fromRGBO(255, 255, 255, 0.4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        match.clubName,
                        style: AppTextStyle.f18w700,
                      ),
                      Text(
                        match.clubAddress,
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
                  Card(
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
                  ),
                  AppSpaces.gapH8,
                  if (state.status == StateStatus.loading)
                    const Card(
                      child: CircularProgressIndicator(),
                    )
                  else
                    state.status == StateStatus.loaded
                        ? PlayerCard(player: state.player!)
                        : Card(
                            child: Text(
                              'Usuario no encontrado',
                              style: AppTextStyle.f16w700,
                            ),
                          ),
                  AppSpaces.gapH16,
                  SizedBox(
                    width: double.infinity,
                    child: ALTButton(
                      model: ALTButtonModel(
                        text: 'Unirme al partido',
                        type: ALTButtonType.primary,
                      ),
                      onPressed: () => print('jijiji'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
