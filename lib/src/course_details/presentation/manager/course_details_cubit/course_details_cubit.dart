// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/functions/show_custom_dialog.dart';
import 'package:halim/core/functions/show_loading_dialog.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/bottom_sheet_button_loading.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/src/course_details/data/models/anouncement_box_model.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_lesson_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/data/models/lessons_section_model.dart';
import 'package:halim/src/course_details/data/models/wallet_model.dart';
import 'package:halim/src/course_details/domain/entities/quiz_status.dart';
import 'package:halim/src/course_details/domain/repos/course_details_repo.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_quiz_view/course_quiz_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/widgets/enroll_success_dialog.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/widgets/wallet_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_main_details_section_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_video_cover_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_section_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_sub_section_load_list.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_sub_section_loading_list.dart';
import 'package:halim/src/course_details/presentation/views/widgets/my_course_details_view/sections/my_course_certificate_section.dart/my_course_certificate_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/video_player_view/course_video_loading.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../shared/model/discount_model.dart';
import '../../../data/models/certificate_model.dart';
import '../../../data/models/comment_model.dart';
import '../../../domain/entities/quiz_result.dart';
import '../../views/widgets/course_reading_view/course_reading_loading.dart';
import '../../views/widgets/enroll_course_view/widgets/course_enroll_checkout_loading.dart';
import '../../views/widgets/my_course_details_view/sections/my_course_announcements_section/widgets/announcement_box_loading_list.dart';

part 'course_details_state.dart';
part 'course_details_cubit.freezed.dart';

class CourseDetailsCubit extends Cubit<CourseDetailsState> {
  CourseDetailsCubit(this._courseDetailsRepo)
      : super(const CourseDetailsState.initial());

  final CourseDetailsRepo _courseDetailsRepo;

  int courseId = -1;
  CourseMainSectionModel? courseMainSection;

  Future<void> getCourseMainSection() async {
    emit(
      const CourseDetailsState.fetchCourseMainSectionLoading(),
    );
    final response = await _courseDetailsRepo.getCourseMainSection(courseId);
    response.when(
      success: (data) {
        courseMainSection = data.data;
        emit(
          CourseDetailsState.fetchCourseMainSectionSuccess(
            courseMainSection!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseMainSectionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseMainSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseMainSectionLoading: () => true,
      fetchCourseMainSectionFailure: (_) => true,
      fetchCourseMainSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseMainSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () =>
          const CourseMainDetailsSectionLoading(),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildCourseVideoCover({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () => const CourseVideoCoverLoading(),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  CourseAboutSectionModel? courseAboutSection;

  Future<void> getCourseAboutSection() async {
    emit(
      const CourseDetailsState.fetchCourseAboutSectionLoading(),
    );
    final response = await _courseDetailsRepo.getCourseAboutSection(courseId);
    response.when(
      success: (data) {
        courseAboutSection = data.data;
        emit(
          CourseDetailsState.fetchCourseAboutSectionSuccess(
            courseAboutSection!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseAboutSectionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseAboutSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseAboutSectionLoading: () => true,
      fetchCourseAboutSectionFailure: (_) => true,
      fetchCourseAboutSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseAboutSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseAboutSectionLoading: () => const CourseAboutSectionLoading(),
      fetchCourseAboutSectionSuccess: (_, __) => child,
      fetchCourseAboutSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildReviewsHeaderSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () => ShimmerBox(
        height: 30,
        width: context.width * 0.6,
      ),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  List<LessonsSectionModel> courseLessonsSections = [];

  late final PagingAdapter<LessonsSectionModel>
      courseLessonsSectionsPagingAdapter;

  void refresh() {
    courseLessonsSectionsPagingAdapter.refresh();
  }

  void init(BuildContext context) {
    courseLessonsSectionsPagingAdapter =
        PagingAdapter(fetchItems: getCourseLessonsSections);
    courseLessonsSectionsPagingAdapter.init();
    courseLessonsSectionsPagingAdapter.initPageRequestListener(
      context,
      courseLessonsSectionsPagingAdapter.pagingController,
    );
  }

  Future<void> getCourseLessonsSections(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) courseLessonsSections.clear();
    emit(
      const CourseDetailsState.loadingCourseLessonsSectionPagination(),
    );
    final response = await _courseDetailsRepo.getCourseLessonsSection(
      courseId: courseId,
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        courseLessonsSections.addAll(list.whereType());
        courseLessonsSectionsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: courseLessonsSections,
          pageKey: pageKey,
          pagingController: courseLessonsSectionsPagingAdapter.pagingController,
        );
        emit(
          CourseDetailsState.successCourseLessonsSectionPagination(
              data.message),
        );
      },
      failure: (networkException) {
        courseLessonsSectionsPagingAdapter.pagingController.error =
            networkException;
        emit(
          CourseDetailsState.failureCourseLessonsSectionPagination(
              networkException),
        );
      },
    );
  }

  bool buildCourseLessonsSectionsListWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingCourseLessonsSectionPagination: () => true,
      successCourseLessonsSectionPagination: (_) => true,
      failureCourseLessonsSectionPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseLessonsSectionsList(
    BuildContext context, {
    required PagingController<int, LessonsSectionModel> pagingController,
    required Widget Function(BuildContext, LessonsSectionModel, int)
        itemBuilder,
  }) =>
      courseLessonsSectionsPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CourseLessonsSubSectionLoadList(),
      );

  bool listenCourseLessonsSectionsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingCourseLessonsSectionPagination: () => true,
      failureCourseLessonsSectionPagination: (_) => true,
      successCourseLessonsSectionPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseLessonsSectionHeader({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () => ShimmerBox(
        height: 30,
        width: context.width * 0.6,
      ),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  listenCourseLessonsSections(BuildContext context, CourseDetailsState state) {
    const title = 'Course Lessons Sections';
    state.maybeWhen(
      loadingCourseLessonsSectionPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failureCourseLessonsSectionPagination:
          (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Pagination Error',
        );
      },
      successCourseLessonsSectionPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  CourseLessonModel? courseLessonModel;
  int sectionId = -1;
  int lessonId = -1;
  Future<void> getCourseLessonDetails() async {
    emit(
      const CourseDetailsState.fetchCourseLessonDetailsLoading(),
    );
    final response = await _courseDetailsRepo.getCourseLessonDetails(
      courseId: courseId,
      sectionId: sectionId,
      lessonId: lessonId,
    );
    response.when(
      success: (data) {
        courseLessonModel = data.data;
        emit(
          CourseDetailsState.fetchCourseLessonDetailsSuccess(
            courseLessonModel!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseLessonDetailsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseLessonDetailsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseLessonDetailsLoading: () => true,
      fetchCourseLessonDetailsFailure: (_) => true,
      fetchCourseLessonDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseLessonDetailsReading({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLessonDetailsLoading: () => const CourseReadingLoading(),
      fetchCourseLessonDetailsSuccess: (_, __) => child,
      fetchCourseLessonDetailsFailure: (_) => const SizedBox(),
      orElse: () => const CourseReadingLoading(),
    );
  }

  Widget buildCourseLessonDetailsVideo({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLessonDetailsLoading: () => const CourseVideoLoading(),
      fetchCourseLessonDetailsSuccess: (_, __) => child,
      fetchCourseLessonDetailsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildCourseLessonDetailsQuiz({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLessonDetailsLoading: () => const CourseQuizLoading(),
      fetchCourseLessonDetailsSuccess: (_, __) => child,
      fetchCourseLessonDetailsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildCourseLessonDetails({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLessonDetailsLoading: () => const CustomLoadingIndicator(),
      fetchCourseLessonDetailsSuccess: (_, __) => child,
      fetchCourseLessonDetailsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenCourseLessonDetailsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseLessonDetailsLoading: () => true,
      fetchCourseLessonDetailsFailure: (_) => true,
      fetchCourseLessonDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseLessonDetails(BuildContext context, CourseDetailsState state) {
    const title = 'Course Lesson Details';
    state.maybeWhen(
      fetchCourseLessonDetailsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseLessonDetailsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseLessonDetailsSuccess:
          (CourseLessonModel courseLessonModel, String? message) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> submitCourseLessonCompletion({int? quizResult}) async {
    emit(
      const CourseDetailsState.submitCourseLessonCompletionLoading(),
    );
    final response = await _courseDetailsRepo.submitCourseLessonCompletion(
      courseId: courseId,
      sectionId: sectionId,
      lessonId: lessonId,
      quizResult: quizResult,
    );
    response.when(
      success: (data) {
        refresh();
        emit(
          CourseDetailsState.submitCourseLessonCompletionSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.submitCourseLessonCompletionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool listenCourseLessonCompletionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      submitCourseLessonCompletionLoading: () => true,
      submitCourseLessonCompletionFailure: (_) => true,
      submitCourseLessonCompletionSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenCourseLessonCompletion(BuildContext context, CourseDetailsState state) {
    const title = 'Course Lesson Completion';
    state.maybeWhen(
      submitCourseLessonCompletionLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      submitCourseLessonCompletionFailure:
          (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      submitCourseLessonCompletionSuccess: (String? message) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  QuizResult? quizResult;
  Future<void> submitQuiz({required List<Question> questions}) async {
    int correctAnswers = 0;
    for (Question question in questions) {
      bool isCorrectAnswered = true;
      List<Answer> answers = question.answers ?? [];
      for (Answer answer in answers) {
        if (answer.isCorrect != answer.isUserAnswer) {
          isCorrectAnswered = false;
          break;
        }
      }
      if (isCorrectAnswered) {
        correctAnswers++;
      }
    }
    int totalQuestions = questions.length;
    num grade = (correctAnswers / totalQuestions) * 100;
    QuizStatus quizStatus;
    if (grade < 80) {
      quizStatus = QuizStatus.failed;
    } else {
      quizStatus = QuizStatus.passed;
    }
    quizResult = QuizResult(
      totalQuestions: totalQuestions,
      correctAnswers: correctAnswers,
      wrongAnswers: totalQuestions - correctAnswers,
      grade: grade,
      quizStatus: quizStatus,
    );
    await submitCourseLessonCompletion(quizResult: correctAnswers);
  }

  listenCourseLessonQuizCompletion(
      BuildContext context, CourseDetailsState state) {
    const title = 'Course Lesson Quiz Completion';
    state.maybeWhen(
      submitCourseLessonCompletionLoading: () {
        showLoadingDialog(context);
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      submitCourseLessonCompletionFailure:
          (NetworkExceptions? networkException) {
        context.pop();
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      submitCourseLessonCompletionSuccess: (String? message) {
        context.pop();
        GoRouter.of(context).pushReplacement(AppRoute.kQuizFinishView);
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> saveCourse({required int courseId}) async {
    emit(
      CourseDetailsState.saveCourseLoading(courseId),
    );
    final response = await _courseDetailsRepo.saveCourse(
      courseId: courseId,
    );
    response.when(
      success: (data) {
        if (data.message.contains(AppUrl.kUnsaved)) {
          emit(
            CourseDetailsState.unsaveCourseSuccess(data.message, courseId),
          );
        } else if (data.message.contains(AppUrl.kSaved)) {
          emit(
            CourseDetailsState.saveCourseSuccess(data.message, courseId),
          );
        }
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.saveCourseFailure(networkExceptions, courseId),
        );
      },
    );
  }

  bool listenSaveCourseWhen(
      CourseDetailsState previous, CourseDetailsState current, int courseId) {
    if (current == previous) return false;
    return current.maybeWhen(
      saveCourseLoading: (stateCourseId) =>
          stateCourseId == courseId ? true : false,
      saveCourseFailure: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      saveCourseSuccess: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      unsaveCourseSuccess: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      orElse: () => false,
    );
  }

  listenSaveCourse(BuildContext context, CourseDetailsState state) {
    const title = 'Save Course';
    state.maybeWhen(
      saveCourseLoading: (stateCourseId) {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading\nId = $stateCourseId',
        );
      },
      saveCourseFailure: (NetworkExceptions? networkException, stateCourseId) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error\nId = $stateCourseId',
        );
      },
      saveCourseSuccess: (String? message, stateCourseId) {
        logger.print(
          '$title Success Save',
          color: PrintColor.pink,
          title: '$title Success\nId = $stateCourseId',
        );
      },
      unsaveCourseSuccess: (String? message, stateCourseId) {
        logger.print(
          '$title Success Unsave',
          color: PrintColor.pink,
          title: '$title Success\nId = $stateCourseId',
        );
      },
      orElse: () {},
    );
  }

  bool buildSaveCourseWhen(
      CourseDetailsState previous, CourseDetailsState current, int courseId) {
    if (current == previous) return false;
    return current.maybeWhen(
      saveCourseLoading: (stateCourseId) =>
          stateCourseId == courseId ? true : false,
      saveCourseFailure: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      saveCourseSuccess: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      unsaveCourseSuccess: (_, stateCourseId) =>
          stateCourseId == courseId ? true : false,
      orElse: () => false,
    );
  }

  Widget buildSaveCourseCard({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      saveCourseLoading: (_) => const Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomLoadingIndicator(
          size: 34,
          color: AppColors.primaryColor,
        ),
      ),
      orElse: () => child,
    );
  }

  Widget buildSaveCourseView({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      saveCourseLoading: (_) => const Padding(
        padding: EdgeInsets.all(6.0),
        child: CustomLoadingIndicator(
          size: 50,
          color: AppColors.primaryColor,
        ),
      ),
      orElse: () => child,
    );
  }

  List<LessonsSectionModel> courseLessonsSectionsPage = [];
  Future<void> getCourseLessonsSectionsPage() async {
    emit(
      const CourseDetailsState.fetchCourseLessonsSectionsPageLoading(),
    );
    final response = await _courseDetailsRepo.getCourseLessonsSection(
      courseId: courseId,
      pageKey: null,
    );
    response.when(
      success: (data) {
        courseLessonsSectionsPage =
            List<LessonsSectionModel>.from(data.data.list);
        emit(
          CourseDetailsState.fetchCourseLessonsSectionsPageSuccess(
            courseLessonsSectionsPage,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseLessonsSectionsPageFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseLessonsSectionsPageWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseLessonsSectionsPageLoading: () => true,
      fetchCourseLessonsSectionsPageFailure: (_) => true,
      fetchCourseLessonsSectionsPageSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseLessonsSectionsPage({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLessonsSectionsPageLoading: () =>
          const CourseLessonsSubSectionLoadingList(),
      fetchCourseLessonsSectionsPageSuccess: (_, __) => child,
      fetchCourseLessonsSectionsPageFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenCourseLessonsSectionsPageWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseLessonsSectionsPageLoading: () => true,
      fetchCourseLessonsSectionsPageFailure: (_) => true,
      fetchCourseLessonsSectionsPageSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseLessonsSectionsPage(
      BuildContext context, CourseDetailsState state) {
    const title = 'Course Lessons Sections Page';
    state.maybeWhen(
      fetchCourseLessonsSectionsPageLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseLessonsSectionsPageFailure:
          (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseLessonsSectionsPageSuccess:
          (List<LessonsSectionModel> courseLessonsSectionsPage,
              String? message) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  List<AnnouncementBoxModel>? courseAnnouncements;
  Future<void> getCourseAnnouncementsSection() async {
    emit(
      const CourseDetailsState.fetchCourseAnnouncementsSectionLoading(),
    );
    final response = await _courseDetailsRepo.getCourseAnnouncementsSection(
      courseId: courseId,
    );
    response.when(
      success: (data) {
        courseAnnouncements = List<AnnouncementBoxModel>.from(data.data.list);
        emit(
          CourseDetailsState.fetchCourseAnnouncementsSectionSuccess(
            courseAnnouncements!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseAnnouncementsSectionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseAnnouncementsSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseAnnouncementsSectionLoading: () => true,
      fetchCourseAnnouncementsSectionFailure: (_) => true,
      fetchCourseAnnouncementsSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseAnnouncementsSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseAnnouncementsSectionLoading: () =>
          const AnnouncementBoxLoadingList(),
      fetchCourseAnnouncementsSectionSuccess: (_, __) => child,
      fetchCourseAnnouncementsSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenCourseAnnouncementsSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseAnnouncementsSectionLoading: () => true,
      fetchCourseAnnouncementsSectionFailure: (_) => true,
      fetchCourseAnnouncementsSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseAnnouncementsSection(
      BuildContext context, CourseDetailsState state) {
    const title = 'Course Announcements Section';
    state.maybeWhen(
      fetchCourseAnnouncementsSectionLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseAnnouncementsSectionFailure:
          (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseAnnouncementsSectionSuccess: (
        List<AnnouncementBoxModel> courseAnnouncementsSection,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  CertificateModel? courseCertificate;
  Future<void> getCourseCertificate() async {
    emit(
      const CourseDetailsState.fetchCourseCertificateLoading(),
    );
    final response = await _courseDetailsRepo.getCourseCertificate(
      courseId: courseId,
    );
    response.when(
      success: (data) {
        courseCertificate = data.data;
        emit(
          CourseDetailsState.fetchCourseCertificateSuccess(
            courseCertificate!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseCertificateFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseCertificateWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCertificateLoading: () => true,
      fetchCourseCertificateFailure: (_) => true,
      fetchCourseCertificateSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseCertificate({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseCertificateLoading: () => const MyCourseCertificateLoading(),
      fetchCourseCertificateSuccess: (_, __) => child,
      fetchCourseCertificateFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenCourseCertificateWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCertificateLoading: () => true,
      fetchCourseCertificateFailure: (_) => true,
      fetchCourseCertificateSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseCertificate(BuildContext context, CourseDetailsState state) {
    const title = 'Course Certificate';
    state.maybeWhen(
      fetchCourseCertificateLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseCertificateFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseCertificateSuccess: (
        CertificateModel certificate,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Widget buildCourseEnrollBottomSheet({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () => const BottomSheetButtonLoading(),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  DiscountModel? discount;
  String discountCode = '';
  Future<void> getCourseCodeDetails() async {
    emit(
      const CourseDetailsState.fetchCourseCodeDetailsLoading(),
    );
    final response = await _courseDetailsRepo.getCourseCouponDetails(
      courseId: courseId,
      code: discountCode,
    );
    response.when(
      success: (data) {
        discount = data.data;
        emit(
          CourseDetailsState.fetchCourseCodeDetailsSuccess(
            discount!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseCodeDetailsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseEnrollCheckoutWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCodeDetailsLoading: () => true,
      fetchCourseCodeDetailsFailure: (_) => true,
      fetchCourseCodeDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseEnrollCheckout({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseCodeDetailsLoading: () => const CourseEnrollCheckoutLoading(),
      orElse: () => child,
    );
  }

  bool listenCourseCodeDetailsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCodeDetailsLoading: () => true,
      fetchCourseCodeDetailsFailure: (_) => true,
      fetchCourseCodeDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseCodeDetails(BuildContext context, CourseDetailsState state) {
    const title = 'Course Code Details';
    state.maybeWhen(
      fetchCourseCodeDetailsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseCodeDetailsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseCodeDetailsSuccess: (
        DiscountModel discount,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> enrollCourse() async {
    emit(
      const CourseDetailsState.enrollCourseLoading(),
    );
    final code = discount?.code ?? '';
    final response = await _courseDetailsRepo.enrollCourse(
        courseId: courseId, code: code, pin: "1234");
    response.when(
      success: (data) {
        emit(
          CourseDetailsState.enrollCourseSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.enrollCourseFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool listenEnrollCourseWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      enrollCourseLoading: () => true,
      enrollCourseFailure: (_) => true,
      enrollCourseSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenEnrollCourse(BuildContext context, CourseDetailsState state) {
    const title = 'EnrollCourse';
    state.maybeWhen(
      enrollCourseLoading: () {
        showLoadingDialog(context);
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      enrollCourseFailure: (NetworkExceptions? networkException) {
        context.pop();

        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      enrollCourseSuccess: (
        String? message,
      ) {
        context.pop();

        showCustomDialog(
          context: context,
          widget: const EnrollSuccessDialog(),
        );

        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  WalletModel? wallet;
  Future<void> getWallet() async {
    emit(
      const CourseDetailsState.fetchWalletLoading(),
    );
    final response = await _courseDetailsRepo.getWallet();
    response.when(
      success: (data) {
        wallet = data.data;
        emit(
          CourseDetailsState.fetchWalletSuccess(
            wallet!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchWalletFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildWalletWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchWalletLoading: () => true,
      fetchWalletFailure: (_) => true,
      fetchWalletSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildWallet({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchWalletLoading: () => const WalletLoading(),
      orElse: () => child,
    );
  }

  bool listenWalletWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchWalletLoading: () => true,
      fetchWalletFailure: (_) => true,
      fetchWalletSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenWallet(BuildContext context, CourseDetailsState state) {
    const title = 'Wallet';
    state.maybeWhen(
      fetchWalletLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchWalletFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchWalletSuccess: (
        WalletModel wallet,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  List<CommentModel>? comunityComments;
  Future<void> getCourseCommunityComments() async {
    emit(
      const CourseDetailsState.fetchCourseCommunityCommentsLoading(),
    );
    final response = await _courseDetailsRepo.getCourseCommunityComments(
      courseId: courseId,
    );
    response.when(
      success: (data) {
        comunityComments = List<CommentModel>.from(data.data.list);
        emit(
          CourseDetailsState.fetchCourseCommunityCommentsSuccess(
            comunityComments!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseCommunityCommentsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseCommunityCommentsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCommunityCommentsLoading: () => true,
      fetchCourseCommunityCommentsFailure: (_) => true,
      fetchCourseCommunityCommentsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseCommunityComments({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseCommunityCommentsLoading: () => const CustomLoadingIndicator(),
      fetchCourseCommunityCommentsSuccess: (_, __) => child,
      fetchCourseCommunityCommentsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenCourseCommunityCommentsWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseCommunityCommentsLoading: () => true,
      fetchCourseCommunityCommentsFailure: (_) => true,
      fetchCourseCommunityCommentsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenCourseCommunityComments(
      BuildContext context, CourseDetailsState state) {
    const title = 'Course Community Comments';
    state.maybeWhen(
      fetchCourseCommunityCommentsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchCourseCommunityCommentsFailure:
          (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      fetchCourseCommunityCommentsSuccess: (
        List<CommentModel> data,
        String? message,
      ) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Future<void> postCommunityComment({
    required String content,
    int? repyToId,
  }) async {
    emit(
      const CourseDetailsState.postCommunityCommentLoading(),
    );
    final response = await _courseDetailsRepo.postCommunityComment(
      courseId: courseId,
      content: content,
      replyToId: repyToId,
    );
    response.when(
      success: (data) {
        emit(
          CourseDetailsState.postCommunityCommentSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.postCommunityCommentFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool listenPostCommunityCommentWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      postCommunityCommentLoading: () => true,
      postCommunityCommentFailure: (_) => true,
      postCommunityCommentSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenPostCommunityComment(BuildContext context, CourseDetailsState state) {
    const title = 'Post Community Comment';
    state.maybeWhen(
      postCommunityCommentLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      postCommunityCommentFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Error',
        );
      },
      postCommunityCommentSuccess: (
        String? message,
      ) {
        getCourseCommunityComments();
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  bool listenWhen(CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      orElse: () => true,
    );
  }

  listen(BuildContext context, CourseDetailsState state) {
    const title = 'Course Details';
    state.maybeWhen(
      fetchCourseMainSectionLoading: () {
        logger.print(
          'Fetch Course Main Section Loading...',
          color: PrintColor.orange,
          title: '$title Fetch Course Main Section Loading',
        );
      },
      fetchCourseMainSectionFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessageTr(networkException),
          title: LocaleKeys.Errors_error.tr(),
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessageTr(networkException),
          color: PrintColor.red,
          title: '$title Fetch Course Main Section Error',
        );
      },
      fetchCourseMainSectionSuccess: (data, message) {
        logger.print(
          '$title Fetch Course Main Section Success',
          color: PrintColor.pink,
          title: '$title Fetch Course Main Section Success',
        );
      },
      orElse: () {},
    );
  }
}
