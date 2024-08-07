// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/navigation_extra_keys.dart';
import 'package:halim/src/achievements/presentation/views/achievements_view.dart';
import 'package:halim/src/achievements/presentation/views/store_view.dart';
import 'package:halim/src/course_details/presentation/views/course_quiz_view.dart';
import 'package:halim/src/course_details/presentation/views/quiz_finish_view.dart';
import 'package:halim/src/course_details/presentation/views/quiz_questions_view.dart';
import 'package:halim/src/course_details/presentation/views/course_video_view.dart';
import 'package:halim/src/forgot_password/presentation/views/enter_email_view.dart';
import 'package:halim/src/forgot_password/presentation/views/enter_phone_num_view.dart';
import 'package:halim/src/home/presentation/views/profile_student.dart';
import 'package:halim/src/home/presentation/views/profile_student_personal_view.dart';
import 'package:halim/src/mentor_details/presentation/views/mentor_courses_view.dart';
import 'package:halim/src/mentor_details/presentation/views/mentor_reviews_view.dart';
import 'package:halim/src/profile_settings/presentation/views/leaderboards_view.dart';
import 'package:halim/src/profile_settings/presentation/views/payments_view.dart';
import 'package:halim/src/profile_settings/presentation/views/receipt_course.dart';
import 'package:halim/src/profile_settings/presentation/views/recharge_view.dart';
import 'package:halim/src/search/presentation/views/search_view.dart';
import 'package:halim/src/course_details/presentation/views/course_details_view.dart';
import 'package:halim/src/course_details/presentation/views/course_lessons_view.dart';
import 'package:halim/src/course_details/presentation/views/course_reading_view.dart';
import 'package:halim/src/course_details/presentation/views/enroll_course_view.dart';
import 'package:halim/src/mentor_details/presentation/views/mentor_details_view.dart';
import 'package:halim/src/course_details/presentation/views/my_course_details_view.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/mentor_details_view/mentor_details_app_bar.dart';
import 'package:halim/src/forgot_password/presentation/views/new_pass_view.dart';
import 'package:halim/src/home/presentation/views/home_view.dart';
import 'package:halim/src/auth/presentation/views/confirm_email_view.dart';
import 'package:halim/src/auth/presentation/views/login_view.dart';
import 'package:halim/src/auth/presentation/views/login_with_view.dart';
import 'package:halim/src/auth/presentation/views/register_view.dart';
import 'package:halim/src/profile_settings/presentation/views/definition_halim.dart';
import 'package:halim/src/profile_settings/presentation/views/notification_settings_view.dart';
import 'package:halim/src/splash/presentation/views/intro_view.dart';
import 'package:halim/src/splash/presentation/views/splash_view.dart';

import '../../src/account_setup/presentation/views/biometric_view.dart';
import '../../src/account_setup/presentation/views/create_pin_view.dart';
import '../../src/account_setup/presentation/views/fill_profile_view.dart';
import '../../src/chat/presentation/views/chat_view.dart';
import '../../src/course_details/presentation/views/course_reviews_view.dart';
import '../../src/forgot_password/presentation/views/enter_code_view.dart';
import '../../src/forgot_password/presentation/views/send_code_view.dart';
import '../../src/home/presentation/views/notifications_view.dart';
import '../../src/home/presentation/views/popular_courses_view.dart';
import '../../src/home/presentation/views/top_mentors_view.dart';
import '../../src/home/presentation/views/widgets/bottom_bar.dart';
import '../../src/my_courses/presentation/views/my_courses_view.dart';
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
  static const kConfirmEmailView = '/confirmEmail';
  static const kChatView = '/chat';
  static const kAchievementsView = '/achievements';
  static const kStoreView = '/store';
  static const kCourseQuizView = '/courseQuiz';
  static const kQuizQuestionsView = '/quizQuestions';
  static const kQuizFinishView = '/quizFinish';
  static const kCourseVideoView = '/courseVideo';
  static const kMentorCoursesView = '/mentorCourses';
  static const kMentorReviewsView = '/mentorReviews';

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
  static const kMyCourses = '/kMyCourses';
  static const kEditProfile = '/kEditProfile';
  static const kNotificationSettingsView = '/kNotificationSettingsView';
  static const kSecurityView = '/kSecurityView';
  static const kLanguageSettingsView = '/kLanguageSettingsView';
  static const kSettingsView = '/kSettingsView';
  static const kDefinitionHalimView = '/kDefinitionHalimView';
  static const kLeaderboardsView = '/kLeaderboardsView';
  static const kPaymentsView = '/kPaymentsView';
  static const kReceiptView = '/kReceiptView';
  static const kShippingView = '/kShippingView';
  static const kProfileStudentView = '/kProfileStudentView';
  static const kProfileStudentPersonalView = '/kProfileStudentPersonalView';
  static const kEnterEmailView = '/kEnterEmailView';
  static const kEnterPhoneNumView = '/kEnterPhoneNumView';

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const PopScope(canPop: false, child: SplashView());
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
        path: kConfirmEmailView,
        builder: (BuildContext context, GoRouterState state) {
          return const ConfirmEmailView();
        },
      ),
      GoRoute(
        path: kCourseDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return CourseDetailsView(
            courseId: (GoRouterState.of(context).extra
                as Map<String, dynamic>)[NavKeys.courseId] as int,
          );
        },
      ),
      GoRoute(
        path: kCourseQuizView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseQuizView();
        },
      ),
      GoRoute(
        path: kQuizQuestionsView,
        builder: (BuildContext context, GoRouterState state) {
          return PopScope(
            canPop: false,
            child: QuizQuestionsView(
              isAnswer: (GoRouterState.of(context).extra as Map<String,
                  dynamic>)[NavKeys.IsQuizQuestionStateAnswers] as bool,
            ),
          );
        },
      ),
      GoRoute(
        path: kQuizFinishView,
        builder: (BuildContext context, GoRouterState state) {
          return const QuizFinishView();
        },
      ),
      GoRoute(
        path: kCourseLessonsView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseLessonsView();
        },
      ),
      GoRoute(
        path: kCourseVideoView,
        builder: (BuildContext context, GoRouterState state) {
          return const CourseVideoView();
        },
      ),
      GoRoute(
        path: kStoreView,
        builder: (BuildContext context, GoRouterState state) {
          return const StoreView();
        },
      ),
      GoRoute(
        path: kChatView,
        builder: (BuildContext context, GoRouterState state) {
          return const ChatView();
        },
      ),
      GoRoute(
        path: kAchievementsView,
        builder: (BuildContext context, GoRouterState state) {
          return const AchievementsView();
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
          return MentorDetailsView(
            mentorId: (GoRouterState.of(context).extra
                as Map<String, dynamic>)[NavKeys.mentorId] as int,
          );
        },
      ),
      GoRoute(
        path: kMentorCoursesView,
        builder: (BuildContext context, GoRouterState state) {
          return const MentorCoursesView();
        },
      ),
      GoRoute(
        path: kMentorReviewsView,
        builder: (BuildContext context, GoRouterState state) {
          return const MentorReviewsView();
        },
      ),
      GoRoute(
        path: kMyCourseDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return  MyCourseDetailsView(courseId:    (GoRouterState.of(context).extra
                as Map<String, dynamic>)[NavKeys.myCourseId] as int,);
        },
      ),
      GoRoute(
        path: kFillProfile,
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
        path: kMyCourses,
        builder: (BuildContext context, GoRouterState state) {
          return const MyCoursesView();
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
      GoRoute(
        path: kLeaderboardsView,
        builder: (BuildContext context, GoRouterState state) {
          return const LeaderboardsView();
        },
      ),
      GoRoute(
        path: kPaymentsView,
        builder: (BuildContext context, GoRouterState state) {
          return const PaymentsView();
        },
      ),
      GoRoute(
        path: kReceiptView,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceiptView();
        },
      ),
      GoRoute(
        path: kShippingView,
        builder: (BuildContext context, GoRouterState state) {
          return const ShippingView();
        },
      ),
      GoRoute(
        path: kProfileStudentView,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileStudentView();
        },
      ),
      GoRoute(
        path: kEnterEmailView,
        builder: (BuildContext context, GoRouterState state) {
          return const EnterEmailView();
        },
      ),
      GoRoute(
        path: kEnterPhoneNumView,
        builder: (BuildContext context, GoRouterState state) {
          return const EnterPhoneNumView();
        },
      ),
      GoRoute(
        path: kProfileStudentPersonalView,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileStudentPersonalView();
        },
      ),
    ],
  );
}
