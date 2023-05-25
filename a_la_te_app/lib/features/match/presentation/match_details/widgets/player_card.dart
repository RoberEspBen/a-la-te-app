import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (player.id == locator<UserCubit>().state.user.id) {
          context.goNamed(AppRoute.profile.name);
        } else {
          print('holaa');
          context.pushNamed(
            AppRoute.playerProfile.name,
            extra: player,
          );
        }
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          player.playerPhoto ??
                              'assets/images/user/user_default1.png',
                          width: 50,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              player.name,
                              style: AppTextStyle.f14w700,
                            ),
                            Text(
                              'Nivel ${player.level}',
                              style: AppTextStyle.f12w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: AppColors.black2,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Partidos jugados',
                                style: AppTextStyle.f12w400,
                              ),
                              Text(
                                player.playedMatches.toString(),
                                style: AppTextStyle.f12w700,
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: AppColors.black2,
                          ),
                          Column(
                            children: [
                              Text(
                                'Partidos ganados',
                                style: AppTextStyle.f12w400,
                              ),
                              Text(
                                player.wonMatches.toString(),
                                style: AppTextStyle.f12w700,
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: AppColors.black2,
                          ),
                          Column(
                            children: [
                              Text(
                                'Mano',
                                style: AppTextStyle.f12w400,
                              ),
                              Text(
                                player.skillfullHand,
                                style: AppTextStyle.f12w700,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
