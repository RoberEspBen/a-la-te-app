import 'package:a_la_te_app/features/counter/counter.dart';
import 'package:a_la_te_app/features/example/domain/models/example.dart';
import 'package:a_la_te_app/features/example/presentation/example_details/screens/example_details_screen.dart';
import 'package:a_la_te_app/features/example/presentation/examples_list/screens/examples_list_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  startApp('/'),
  examplesList('/examplesList'),
  exampleDetails('exampleDetails');

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
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: AppRoute.startApp.path,
      name: AppRoute.startApp.name,
      pageBuilder: (context, state) {
        return const NoTransitionPage(child: CounterPage());
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
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
  ],
);
