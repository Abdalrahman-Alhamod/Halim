// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/course_details/presentation/views/course_details_view.dart';
import 'package:halim/src/course_details/presentation/views/course_lessons_view.dart';
import 'package:halim/src/course_details/presentation/views/course_reading_view.dart';
import 'package:halim/src/course_details/presentation/views/enroll_course_view.dart';
import 'package:halim/src/course_details/presentation/views/mentor_details_view.dart';
import 'package:halim/src/course_details/presentation/views/my_course_details_view.dart';
import 'package:halim/src/course_details/presentation/views/widgets/mentor_details_view.dart/mentor_details_app_bar.dart';
import 'package:halim/src/forgot_password/presentation/views/new_pass_view.dart';
import 'package:halim/src/home/presentation/views/home_view.dart';
import 'package:halim/src/login_register/presentation/views/login_view.dart';
import 'package:halim/src/login_register/presentation/views/login_with_view.dart';
import 'package:halim/src/login_register/presentation/views/register_view.dart';
import 'package:halim/src/profile_settings/presentation/views/definition_halim.dart';
import 'package:halim/src/profile_settings/presentation/views/notification_settings_view.dart';
import 'package:halim/src/splash/presentation/views/intro_view.dart';
import 'package:halim/src/splash/presentation/views/splash_view.dart';

import '../../src/account_setup/presentation/views/biometric_view.dart';
import '../../src/account_setup/presentation/views/create_pin_view.dart';
import '../../src/account_setup/presentation/views/fill_profile_view.dart';
import '../../src/course_details/presentation/views/course_reviews_view.dart';
import '../../src/forgot_password/presentation/views/enter_code_view.dart';
import '../../src/forgot_password/presentation/views/send_code_view.dart';
import '../../src/home/presentation/views/notifications_view.dart';
import '../../src/home/presentation/views/popular_courses_view.dart';
import '../../src/home/presentation/views/search_view.dart';
import '../../src/home/presentation/views/top_mentors_view.dart';
import '../../src/home/presentation/views/widgets/bottom_bar.dart';
import '../../src/my_courses/presentation/views/bookmark_view.dart';
import '../../src/my_courses/presentation/views/browse_sections_view.dart';
import '../../src/profile_settings/presentation/views/edit_profile.dart';
import '../../src/profile_settings/presentation/views/language_settings_view.dart';
import '../../src/profile_settings/presentation/views/security_view.dart';
import '../../src/profile_settings/presentation/views/settings_view.dart';

class AppRoute {
  static const kIntroView = '/intro';
  static const kLoginWithView = '/loginWith';
  static const kLoginView = '/login';
  static const kRegisterView = '/register';
  static const kCourseDetailsView = '/courseDetails';
  static const kCourseLessonsView = '/courseLessons';
  static const kCourseReadingView = '/courseReading';
  static const kCourseReviewsView = '/courseReviews';
  static const kEnrollCourseView = '/enrollCourse';
  static const kMentorDetailsView = '/mentorDetails';
  static const kMyCourseDetailsView = '/myCourseDetails';

  static const kFillProfile = '/fillProfile';
  static const kCreatePin = '/kCreatePin';
  static const kBiomatric = '/biomatric';
  static const kHome = '/home';
  static const kSendCode = '/kSendCode';
  static const kEnterCode = '/kEnterCode';
  static const kNewPass = '/kNewPass';
  static const kTopMentors = '/kTopMentors';
  static const kPopularCourses = '/kPopularCourses';
  static const kNotifications = '/kNotifications';
  static const kBookMark = '/kBookMark';
  static const kSearch = '/kSearch';
  static const kBrowseSectionsCourses = '/kBrowseSectionsCourses';
  static const kEditProfile = '/kEditProfile';
  static const kNotificationSettingsView = '/kNotificationSettingsView';
  static const kSecurityView = '/kSecurityView';
  static const kLanguageSettingsView = '/kLanguageSettingsView';
  static const kSettingsView = '/kSettingsView';
  static const kDefinitionHalimView = '/kDefinitionHalimView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      /*GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),*/
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
      GoRoute(
        path: kCourseReadingView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseReadingView();
        },
      ),
      GoRoute(
        path: kCourseReviewsView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseReviewsView();
        },
      ),
      GoRoute(
        path: kEnrollCourseView,
        builder: (BuildContext context, GoRouterState state) {
          return const EnrollCourseView();
        },
      ),
      GoRoute(
        path: kMentorDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const MentorDetailsView();
        },
      ),
      GoRoute(
        path: kMyCourseDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const MyCourseDetailsView();
        },
      ),
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const FillProfilView();
        },
      ),
      GoRoute(
        path: kCreatePin,
        builder: (BuildContext context, GoRouterState state) {
          return const CreatePinView();
        },
      ),
      GoRoute(
        path: kBiomatric,
        builder: (BuildContext context, GoRouterState state) {
          return const BiometricView();
        },
      ),
      GoRoute(
        path: kHome,
        builder: (BuildContext context, GoRouterState state) {
          return const BottomBar();
        },
      ),
      GoRoute(
        path: kSendCode,
        builder: (BuildContext context, GoRouterState state) {
          return const SendCodeview();
        },
      ),
      GoRoute(
        path: kEnterCode,
        builder: (BuildContext context, GoRouterState state) {
          return const EnterCodeView();
        },
      ),
      GoRoute(
        path: kNewPass,
        builder: (BuildContext context, GoRouterState state) {
          return const NewPassView();
        },
      ),
      GoRoute(
        path: kNotifications,
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationsView();
        },
      ),
      GoRoute(
        path: kBookMark,
        builder: (BuildContext context, GoRouterState state) {
          return const BookMarkView();
        },
      ),
      GoRoute(
        path: kPopularCourses,
        builder: (BuildContext context, GoRouterState state) {
          return const PopularCoursesView();
        },
      ),
      GoRoute(
        path: kTopMentors,
        builder: (BuildContext context, GoRouterState state) {
          return const TopMonetorsView();
        },
      ),
      GoRoute(
        path: kSearch,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kBrowseSectionsCourses,
        builder: (BuildContext context, GoRouterState state) {
          return const BrowseSectionsCourses();
        },
      ),
      GoRoute(
        path: kEditProfile,
        builder: (BuildContext context, GoRouterState state) {
          return const EditProfileView();
        },
      ),
      GoRoute(
        path: kNotificationSettingsView,
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationSettingsView();
        },
      ),
      GoRoute(
        path: kSecurityView,
        builder: (BuildContext context, GoRouterState state) {
          return const SecurityView();
        },
      ),
      GoRoute(
        path: kLanguageSettingsView,
        builder: (BuildContext context, GoRouterState state) {
          return const LanguageSettingsView();
        },
      ),
      GoRoute(
        path: kSettingsView,
        builder: (BuildContext context, GoRouterState state) {
          return const SettingsView();
        },
      ),
      GoRoute(
        path: kDefinitionHalimView,
        builder: (BuildContext context, GoRouterState state) {
          return const DefinitionHalimView();
        },
      ),
    ],
  );
}
