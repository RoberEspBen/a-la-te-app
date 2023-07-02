import 'package:a_la_te_app/core/di/service_locator.dart';
import 'package:a_la_te_app/core/routing/app_router.dart';
import 'package:a_la_te_app/features/bottom_nav_bar/application/cubit/bottom_nav_bar_cubit.dart';
import 'package:a_la_te_app/features/club/domain/repository/club_repository.dart';
import 'package:a_la_te_app/features/match/application/create_match/cubit/create_match_cubit.dart';
import 'package:a_la_te_app/features/match/application/match/cubit/match_cubit.dart';
import 'package:a_la_te_app/features/match/domain/repository/match_repository.dart';
import 'package:a_la_te_app/features/user/application/cubit/user_cubit.dart';
import 'package:a_la_te_app/l10n/l10n.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBarCubit>(
          create: (_) => BottomNavBarCubit()..init(),
        ),
        BlocProvider<MatchCubit>(
          create: (_) => locator<MatchCubit>()..getMatches(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => locator<UserCubit>()..getUser(),
          lazy: false,
        ),
        BlocProvider<CreateMatchCubit>(
          create: (_) => CreateMatchCubit(
            matchRepository: locator<MatchRepository>(),
            clubRepository: locator<ClubRepository>(),
            userCubit: locator<UserCubit>(),
          )..init(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(
          scheme: FlexScheme.bahamaBlue,
          useMaterial3: true,
        ),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.bahamaBlue),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: goRouter,
      ),
    );
  }
}
