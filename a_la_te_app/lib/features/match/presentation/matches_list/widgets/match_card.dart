import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class MatchCard extends StatelessWidget {
  const MatchCard({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoute.matchDetails.name,
        extra: match,
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${DateFormat('EEEE dd').format(match.matchDate!).capitalize} de ${DateFormat('MMMM').format(match.matchDate!)}',
                        style: AppTextStyle.f14w600,
                      ),
                      if (match.matchStatus == MatchStatus.scheduledMatch &&
                          match.matchDate!.isBefore(DateTime.now()))
                        const Icon(
                          Icons.notifications_active,
                          color: AppColors.tertiary,
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: AppColors.black,
            ),
            Padding(
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
                              match.firstPlayerPhoto ??
                                  'assets/images/user/user_default1.png',
                              width: 50,
                            ),
                            AppSpaces.gapW16,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  match.firstPlayerName,
                                  style: AppTextStyle.f14w700,
                                ),
                                Text(
                                  'Nivel ${match.firstPlayerLevel}',
                                  style: AppTextStyle.f12w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        if (match.secondPlayerId != null)
                          Column(
                            children: [
                              AppSpaces.gapH12,
                              Row(
                                children: [
                                  Image.asset(
                                    match.secondPlayerPhoto ??
                                        'assets/images/user/user_default1.png',
                                    width: 50,
                                  ),
                                  AppSpaces.gapW16,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        match.secondPlayerName!,
                                        style: AppTextStyle.f14w700,
                                      ),
                                      Text(
                                        'Nivel ${match.secondPlayerLevel}',
                                        style: AppTextStyle.f12w400,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                match.club!.clubImage ??
                                    'assets/images/clubs/tenis_1.jpg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: Text(
                                match.club!.clubName,
                                style: AppTextStyle.f14w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('HH:mm').format(
                            DateTime.fromMillisecondsSinceEpoch(
                              match.initialHour * 1000,
                            ),
                          ),
                          style: AppTextStyle.f14w500,
                        ),
                        Text(
                          DateFormat('HH:mm').format(
                            DateTime.fromMillisecondsSinceEpoch(
                              match.finalHour * 1000,
                            ),
                          ),
                          style: AppTextStyle.f14w500,
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
    );
  }
}
