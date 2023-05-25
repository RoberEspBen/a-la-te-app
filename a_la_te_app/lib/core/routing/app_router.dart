import 'package:a_la_te_app/features/bottom_nav_bar/presentation/screens/bottom_nav_bar_screen.dart';
import 'package:a_la_te_app/features/counter/counter.dart';
import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:a_la_te_app/features/example/presentation/example_details/screens/example_details_screen.dart';
import 'package:a_la_te_app/features/example/presentation/examples_list/screens/examples_list_screen.dart';
import 'package:a_la_te_app/features/match/domain/models/match_model/match_model.dart';
import 'package:a_la_te_app/features/match/presentation/match_details/screens/match_details_screen.dart';
import 'package:a_la_te_app/features/match/presentation/matches_list/screens/matches_list_screen.dart';
import 'package:a_la_te_app/features/player/domain/model/player.dart';
import 'package:a_la_te_app/features/player/presentation/screens/player_profile_screen.dart';
import 'package:a_la_te_app/features/profile/presentation/srceens/profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  startApp('/'),
  //EXAMPLES
  examplesList('/examplesList'),
  exampleDetails('exampleDetails'),
  //MATCH
  matchesList('/matchesList'),
  matchDetails('matchDetails'),
  //PROFILE
  profile('/profile'),
  playerProfile('playerProfile');

  const AppRoute(this.path);
  final String path;
}

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: BottomNavBarScreen(
            currentRouteLocation: state.location,
            child: child,
          ),
        );
      },
      routes: [
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: AppRoute.startApp.path,
          name: AppRoute.startApp.name,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: CounterPage(),
            );
          },
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: AppRoute.examplesList.path,
          name: AppRoute.examplesList.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ExamplesListScreen(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: AppRoute.exampleDetails.path,
              name: AppRoute.exampleDetails.name,
              builder: (context, state) {
                return ExampleDetailsScreen(
                  example: state.extra as Example,
                );
              },
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: AppRoute.matchesList.path,
          name: AppRoute.matchesList.name,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: MatchesListScreen(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: AppRoute.matchDetails.path,
              name: AppRoute.matchDetails.name,
              builder: (context, state) {
                return MatchDetailsScreen(
                  match: state.extra as MatchModel,
                );
              },
              routes: [
                GoRoute(
                  parentNavigatorKey: _rootNavigatorKey,
                  path: AppRoute.playerProfile.path,
                  name: AppRoute.playerProfile.name,
                  builder: (context, state) {
                    return PlayerProfileScreen(
                      player: state.extra as Player,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          parentNavigatorKey: _shellNavigatorKey,
          path: AppRoute.profile.path,
          name: AppRoute.profile.name,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ProfileScreen(),
            );
          },
        ),
      ],
    ),
  ],
);
