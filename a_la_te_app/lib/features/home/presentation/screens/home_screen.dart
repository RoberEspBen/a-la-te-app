import 'dart:ui';

import 'package:a_la_te_app/core/styles/app_colors.dart';
import 'package:a_la_te_app/core/styles/app_spaces.dart';
import 'package:a_la_te_app/core/styles/app_text_style.dart';
import 'package:a_la_te_app/features/match/presentation/create_match/widgets/create_match_card.dart';
import 'package:a_la_te_app/features/match/presentation/matches_list/widgets/match_card.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(
                          'assets/images/home/pista_tenis.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 3,
                        sigmaY: 3,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(
                            0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppSpaces.gapH16,
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tus partidos',
                          style: AppTextStyle.f16w700,
                        ),
                        AppSpaces.gapH8,
                        ...List.generate(
                          state.matchesCreated.length,
                          (index) => Column(
                            children: [
                              MatchCard(match: state.matchesCreated[index]),
                              AppSpaces.gapH8,
                            ],
                          ),
                        ),
                        ...List.generate(
                          state.scheduledMatches.length,
                          (index) => Column(
                            children: [
                              MatchCard(match: state.scheduledMatches[index]),
                              AppSpaces.gapH8,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '¡Bienvenido, ${state.user.name.split(' ').first}!',
                        style: AppTextStyle.f18w700.copyWith(
                          fontSize: 26,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  AppSpaces.gapH20,
                  const CreateMatchCard(),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
