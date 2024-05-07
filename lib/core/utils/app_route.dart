// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/course_details/presentation/views/course_details_view.dart';
import 'package:halim/src/course_details/presentation/views/course_lessons_view.dart';
import 'package:halim/src/login_register/presentation/views/login_view.dart';
import 'package:halim/src/login_register/presentation/views/login_with_view.dart';
import 'package:halim/src/login_register/presentation/views/register_view.dart';
import 'package:halim/src/splash/presentation/views/intro_view.dart';
import 'package:halim/src/splash/presentation/views/splash_view.dart';

class AppRoute {
  static const kIntroView = '/intro';
  static const kLoginWithView = '/loginWith';
  static const kLoginView = '/login';
  static const kRegisterView = '/register';
  static const kCourseDetailsView = '/courseDetails';
  static const kCourseLessonsView = '/courseLessons';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          // return const SplashView();
          return const CourseDetailsView();
        },
      ),
      GoRoute(
        path: kIntroView,
        builder: (BuildContext context, GoRouterState state) {
          return const IntroView();
        },
      ),
      GoRoute(
        path: kLoginWithView,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginWithView();
        },
      ),
      GoRoute(
        path: kLoginView,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: kRegisterView,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterView();
        },
      ),
      GoRoute(
        path: kCourseDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseDetailsView();
        },
      ),
      GoRoute(
        path: kCourseLessonsView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseLessonsView();
        },
      ),
    ],
  );
}
