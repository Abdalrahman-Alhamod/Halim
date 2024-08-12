// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/home/presentation/views/widgets/card_course_loading_list.dart';
import 'package:halim/src/mentor_details/data/models/mentor_details_model.dart';
import 'package:halim/src/mentor_details/domain/repos/mentor_details_repo.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/sections/widgets/mentor_about_me/mentor_about_me_section_loading.dart';
import 'package:halim/src/mentor_details/presentation/views/widgets/sections/widgets/mentor_main_details/mentor_main_details_loading.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../../core/widgets/empty_view.dart';
import '../../../../../core/widgets/shimmer_box.dart';
import '../../../../course_details/presentation/views/widgets/more_details_section/reviews/review_block_loading_list.dart';
import '../../../../shared/model/review_block_model.dart';

part 'mentor_details_state.dart';
part 'mentor_details_cubit.freezed.dart';

class MentorDetailsCubit extends Cubit<MentorDetailsState> {
  MentorDetailsCubit(this._mentorDetailsRepo)
      : super(const MentorDetailsState.initial());
  final MentorDetailsRepo _mentorDetailsRepo;

  int mentorId = -1;
  MentorDetailsModel? mentorDetails;

  Future<void> getMentorDetails() async {
    emit(
      const MentorDetailsState.fetchMentorDetailsLoading(),
    );
    final response =
        await _mentorDetailsRepo.getMentorDetails(mentorId: mentorId);
    response.when(
      success: (data) {
        mentorDetails = data.data;
        emit(
          MentorDetailsState.fetchMentorDetailsSuccess(
            mentorDetails!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          MentorDetailsState.fetchMentorDetailsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildMentorDetailsnWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMentorDetailsLoading: () => true,
      fetchMentorDetailsFailure: (_) => true,
      fetchMentorDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildMentorMainDetails({
    required BuildContext context,
    required MentorDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMentorDetailsLoading: () => const MentorMainDetailsLoading(),
      fetchMentorDetailsSuccess: (_, __) => child,
      fetchMentorDetailsFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildMentorAboutSection({
    required BuildContext context,
    required MentorDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMentorDetailsLoading: () => const MentorAboutMeSectionLoading(),
      fetchMentorDetailsSuccess: (_, __) => child,
      fetchMentorDetailsFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  bool listenMentorDetailsWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMentorDetailsLoading: () => true,
      fetchMentorDetailsFailure: (_) => true,
      fetchMentorDetailsSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenMentorDetails(BuildContext context, MentorDetailsState state) {
    const title = 'Mentor Details';
    state.maybeWhen(
      fetchMentorDetailsLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchMentorDetailsFailure: (NetworkExceptions? networkException) {
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
      fetchMentorDetailsSuccess: (
        MentorDetailsModel mentorDetailsModel,
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

  List<CourseCardModel> mentorCourses = [];

  late final PagingAdapter<CourseCardModel> mentorCoursesPagingAdapter;

  void refreshMentorCourses() {
    mentorCoursesPagingAdapter.refresh();
  }

  void init(BuildContext context) {
    mentorCoursesPagingAdapter = PagingAdapter(fetchItems: getMentorCourses);
    mentorCoursesPagingAdapter.init();
    mentorCoursesPagingAdapter.initPageRequestListener(
      context,
      mentorCoursesPagingAdapter.pagingController,
    );
    mentorReviewsPagingAdapter =
        PagingAdapter(fetchItems: getCoursePaginatedReviews);
    mentorReviewsPagingAdapter.init();
    mentorReviewsPagingAdapter.initPageRequestListener(
      context,
      mentorReviewsPagingAdapter.pagingController,
    );
  }

  Future<void> getMentorCourses(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) mentorCourses.clear();
    emit(
      const MentorDetailsState.loadingMentorCoursesPagination(),
    );
    final response = await _mentorDetailsRepo.getMentorCourses(
      mentorId: mentorId,
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        mentorCourses.addAll(list.whereType());
        mentorCoursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: mentorCourses,
          pageKey: pageKey,
          pagingController: mentorCoursesPagingAdapter.pagingController,
        );
        emit(
          MentorDetailsState.successMentorCoursesPagination(data.message),
        );
      },
      failure: (networkException) {
        mentorCoursesPagingAdapter.pagingController.error = networkException;
        emit(
          MentorDetailsState.failureMentorCoursesPagination(networkException),
        );
      },
    );
  }

  bool buildMentorCoursesListWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingMentorCoursesPagination: () => true,
      successMentorCoursesPagination: (_) => true,
      failureMentorCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildMentorCoursesList(
    BuildContext context, {
    required PagingController<int, CourseCardModel> pagingController,
    required Widget Function(BuildContext, CourseCardModel, int) itemBuilder,
  }) =>
      mentorCoursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CardCourseLoadList(),
      );

  bool listenMentorCoursesWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingMentorCoursesPagination: () => true,
      failureMentorCoursesPagination: (_) => true,
      successMentorCoursesPagination: (_) => true,
      orElse: () => false,
    );
  }

  listenMentorCourses(BuildContext context, MentorDetailsState state) {
    const title = 'Mentor Courses';
    state.maybeWhen(
      loadingMentorCoursesPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failureMentorCoursesPagination: (NetworkExceptions? networkException) {
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
      successMentorCoursesPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  List<CourseCardModel> mentorCoursesPage = [];
  Future<void> getMentorCoursesPage() async {
    emit(
      const MentorDetailsState.fetchMentorCoursesPageLoading(),
    );
    final response = await _mentorDetailsRepo.getMentorCourses(
      mentorId: mentorId,
      pageKey: null,
    );
    response.when(
      success: (data) {
        mentorCoursesPage = List<CourseCardModel>.from(data.data.list);
        emit(
          MentorDetailsState.fetchMentorCoursesPageSuccess(
            mentorCoursesPage,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          MentorDetailsState.fetchMentorCoursesPageFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildMentorCoursesPageWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMentorCoursesPageLoading: () => true,
      fetchMentorCoursesPageFailure: (_) => true,
      fetchMentorCoursesPageSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildMentorCoursesPage({
    required BuildContext context,
    required MentorDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMentorCoursesPageLoading: () => const CardCourseLoadList(),
      fetchMentorCoursesPageSuccess: (_, __) => child,
      fetchMentorCoursesPageFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenMentorCoursesPageWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMentorCoursesPageLoading: () => true,
      fetchMentorCoursesPageFailure: (_) => true,
      fetchMentorCoursesPageSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  listenMentorCoursesPage(BuildContext context, MentorDetailsState state) {
    const title = 'Mentor Courses Page';
    state.maybeWhen(
      fetchMentorCoursesPageLoading: () {
        logger.print(
          'Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      fetchMentorCoursesPageFailure: (NetworkExceptions? networkException) {
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
      fetchMentorCoursesPageSuccess:
          (List<CourseCardModel> courseLessonsSectionsPage, String? message) {
        logger.print(
          '$title Success',
          color: PrintColor.pink,
          title: '$title Success',
        );
      },
      orElse: () {},
    );
  }

  Widget buildReviewsHeaderSection({
    required BuildContext context,
    required MentorDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMentorDetailsLoading: () => ShimmerBox(
        height: 30,
        width: context.width * 0.8,
      ),
      fetchMentorCoursesPageSuccess: (_, __) => child,
      fetchMentorDetailsFailure: (_) => const SizedBox(),
      orElse: () => child,
    );
  }

  String reviewsRatingFilter = AppUrl.all;
  List<ReviewBlockModel> mentorLastReview = [];
  Future<void> getMentorLastReviews() async {
    emit(
      const MentorDetailsState.fetchMentorLastReviewsLoading(),
    );
    final response = await _mentorDetailsRepo.getMentorLastReviews(
      mentorId: mentorId,
      ratingFilter: reviewsRatingFilter,
    );
    response.when(
      success: (data) {
        mentorLastReview = List<ReviewBlockModel>.from(data.data.list);
        mentorLastReview.isEmpty
            ? emit(
                const MentorDetailsState.fetchMentorLastReviewsEmpty(),
              )
            : emit(
                MentorDetailsState.fetchMentorLastReviewsSuccess(
                  mentorLastReview,
                  data.message,
                ),
              );
      },
      failure: (networkExceptions) {
        emit(
          MentorDetailsState.fetchMentorLastReviewsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildMentorLastReviewsWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchMentorLastReviewsLoading: () => true,
      fetchMentorLastReviewsFailure: (_) => true,
      fetchMentorLastReviewsSuccess: (_, __) => true,
      fetchMentorLastReviewsEmpty: () => true,
      orElse: () => false,
    );
  }

  Widget buildMentorLastReviews({
    required BuildContext context,
    required MentorDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchMentorLastReviewsLoading: () => const ReviewBlockLoadingList(),
      fetchMentorLastReviewsEmpty: () => const EmptyView(),
      fetchMentorLastReviewsSuccess: (_, __) => child,
      fetchMentorLastReviewsFailure: (_) => const SizedBox(),
      orElse: () => const ReviewBlockLoadingList(),
    );
  }

  List<ReviewBlockModel> mentorReviews = [];

  late final PagingAdapter<ReviewBlockModel> mentorReviewsPagingAdapter;

  void refreshMentorReviews() {
    mentorReviewsPagingAdapter.refresh();
  }

  Future<void> getCoursePaginatedReviews(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) mentorReviews.clear();
    emit(
      const MentorDetailsState.loadingMentorReviewsPagination(),
    );
    final response = await _mentorDetailsRepo.getMentorPaginatedReviews(
      mentorId: mentorId,
      ratingFilter: reviewsRatingFilter,
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        mentorReviews.addAll(list.whereType());
        mentorReviewsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: mentorReviews,
          pageKey: pageKey,
          pagingController: mentorReviewsPagingAdapter.pagingController,
        );
        emit(
          MentorDetailsState.successMentorReviewsPagination(data.message),
        );
      },
      failure: (networkException) {
        mentorReviewsPagingAdapter.pagingController.error = networkException;
        emit(
          MentorDetailsState.failureMentorReviewsPagination(networkException),
        );
      },
    );
  }

  bool buildCoursePaginatedReviewListWhen(
      MentorDetailsState previous, MentorDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingMentorReviewsPagination: () => true,
      successMentorReviewsPagination: (_) => true,
      failureMentorReviewsPagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCoursePaginatedReviewssList(
    BuildContext context, {
    required PagingController<int, ReviewBlockModel> pagingController,
    required Widget Function(BuildContext, ReviewBlockModel, int) itemBuilder,
  }) =>
      mentorReviewsPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const ReviewBlockLoadList(),
      );
}
