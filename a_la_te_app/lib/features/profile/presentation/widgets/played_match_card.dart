import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlayedMatchCard extends StatelessWidget {
  const PlayedMatchCard({
    super.key,
    required this.match,
    required this.playerId,
  });

  final MatchModel match;
  final int playerId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          AppRoute.matchDetails.name,
          extra: match,
        );
      },
      child: Card(
        color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: SizedBox(
            width: 200,
            height: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (match.winningPlayerId == playerId)
                        Text(
                          '¡¡VICTORIA!!',
                          style: AppTextStyle.f16w700,
                        )
                      else
                        Text(
                          'Derrota',
                          style: AppTextStyle.f16w700,
                        ),
                      const Divider(
                        indent: 0,
                        height: 0,
                        thickness: 2,
                        color: AppColors.black,
                      ),
                      AppSpaces.gapH16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    match.firstPlayerPhoto ??
                                        'assets/images/user/user_default1.png',
                                    width: 50,
                                  ),
                                  AppSpaces.gapW16,
                                  Text(
                                    match.firstPlayerName.split(' ')[0],
                                    style: AppTextStyle.f12w700,
                                  ),
                                ],
                              ),
                              AppSpaces.gapH16,
                              Row(
                                children: [
                                  Image.asset(
                                    match.secondPlayerPhoto ??
                                        'assets/images/user/user_default1.png',
                                    width: 50,
                                  ),
                                  AppSpaces.gapW16,
                                  Text(
                                    match.secondPlayerName!.split(' ')[0],
                                    style: AppTextStyle.f12w700,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: List.generate(
                                  match.matchResult!.length,
                                  (i) {
                                    return Row(
                                      children: [
                                        Text(
                                          match.matchResult![i].firstPlayerGames
                                              .toString(),
                                          style: AppTextStyle.f18w500,
                                        ),
                                        if (i < match.matchResult!.length - 1)
                                          AppSpaces.gapW16
                                        else
                                          const SizedBox(),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              AppSpaces.gapH40,
                              Row(
                                children: List.generate(
                                  match.matchResult!.length,
                                  (i) {
                                    return Row(
                                      children: [
                                        Text(
                                          match
                                              .matchResult![i].secondPlayerGames
                                              .toString(),
                                          style: AppTextStyle.f18w500,
                                        ),
                                        if (i < match.matchResult!.length - 1)
                                          AppSpaces.gapW16
                                        else
                                          const SizedBox.shrink(),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
