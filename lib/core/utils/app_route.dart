import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/splash/presentation/views/intro_view.dart';

import '../../src/splash/presentation/views/splash_view.dart';

class AppRoute {
  static const kIntroView = '/intro';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kIntroView,
        builder: (BuildContext context, GoRouterState state) {
          return const IntroView();
        },
      ),
    ],
  );
}
