// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/data/sources/remote/app_url.dart';
import 'package:halim/core/functions/show_loading_dialog.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_lesson_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/data/models/lessons_section_model.dart';
import 'package:halim/src/course_details/domain/entities/quiz_status.dart';
import 'package:halim/src/course_details/domain/repos/course_details_repo.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_quiz_view/course_quiz_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_main_details_section_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_video_cover_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_section_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/video_player_view/course_video_loading.dart';
import 'package:halim/src/shared/model/discount_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../domain/entities/quiz_result.dart';
import '../../views/widgets/course_reading_view/course_reading_loading.dart';

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
        final courseMainSectionWithoutDiscount = data.data;
        const newDiscount = DiscountModel(id: -1, value: 0.34, code: '8HADJAJ');
        courseMainSection = courseMainSectionWithoutDiscount!.copyWith(
          discount: newDiscount,
        );
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
      orElse: () => courseMainSection != null ? child : const SizedBox(),
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
        loadBuilder: const CustomLoadingIndicator(
          color: AppColors.primaryColor,
        ),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
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
