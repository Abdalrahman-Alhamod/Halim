import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/functions/show_loading_dialog.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/review_block_loading_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/data/sources/remote/app_url.dart';
import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../../../../core/widgets/empty_view.dart';
import '../../../../shared/model/review_block_model.dart';
import '../../../domain/repos/course_details_repo.dart';
import '../../views/widgets/more_details_section/reviews/review_block_loading.dart';

part 'reviews_state.dart';
part 'reviews_cubit.freezed.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  ReviewsCubit(this._courseDetailsRepo) : super(const ReviewsState.initial());
  final CourseDetailsRepo _courseDetailsRepo;

  int courseId = -1;

  String courseRatingFilter = AppUrl.all;
  List<ReviewBlockModel> courseLastReview = [];
  Future<void> getCourseLastReviews() async {
    emit(
      const ReviewsState.fetchCourseLastReviewsLoading(),
    );
    final response = await _courseDetailsRepo.getCourseLastReviews(
      courseId: courseId,
      ratingFilter: courseRatingFilter,
    );
    response.when(
      success: (data) {
        courseLastReview = List<ReviewBlockModel>.from(data.data.list);
        courseLastReview.isEmpty
            ? emit(
                const ReviewsState.fetchCourseLastReviewsEmpty(),
              )
            : emit(
                ReviewsState.fetchCourseLastReviewsSuccess(
                  courseLastReview,
                  data.message,
                ),
              );
      },
      failure: (networkExceptions) {
        emit(
          ReviewsState.fetchCourseLastReviewsFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseLastReviewsWhen(ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseLastReviewsLoading: () => true,
      fetchCourseLastReviewsFailure: (_) => true,
      fetchCourseLastReviewsSuccess: (_, __) => true,
      fetchCourseLastReviewsEmpty: () => true,
      orElse: () => false,
    );
  }

  Widget buildCourseLastReviews({
    required BuildContext context,
    required ReviewsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseLastReviewsLoading: () => const ReviewBlockLoadingList(),
      fetchCourseLastReviewsEmpty: () => const EmptyView(),
      fetchCourseLastReviewsSuccess: (_, __) => child,
      fetchCourseLastReviewsFailure: (_) => const SizedBox(),
      orElse: () => const ReviewBlockLoadingList(),
    );
  }

  ReviewBlockModel? userCourseReview;
  Future<void> getUserCourseReview() async {
    emit(
      const ReviewsState.fetchUserCourseReviewLoading(),
    );
    final response = await _courseDetailsRepo.getUserCourseReview(
      courseId,
    );
    response.when(
      success: (data) {
        userCourseReview = data.data;
        emit(
          ReviewsState.fetchUserCourseReviewSuccess(
            userCourseReview!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          ReviewsState.fetchUserCourseReviewFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildUserCourseReviewWhen(ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchUserCourseReviewLoading: () => true,
      fetchUserCourseReviewFailure: (_) => true,
      fetchUserCourseReviewSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildUserCourseReview({
    required BuildContext context,
    required ReviewsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchUserCourseReviewLoading: () => const ReviewBlockLoading(),
      fetchUserCourseReviewSuccess: (_, __) => child,
      fetchUserCourseReviewFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Future<void> submitUserReview({
    required int rating,
    String? comment,
  }) async {
    emit(
      const ReviewsState.submitUserReviewLoading(),
    );
    final response = await _courseDetailsRepo.submitUserReview(
      courseId: courseId,
      rating: rating,
      comment: comment,
    );
    response.when(
      success: (data) {
        emit(
          ReviewsState.submitUserReviewSuccess(
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          ReviewsState.submitUserReviewFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool listenSubmitUserReviewWhen(ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      submitUserReviewLoading: () => true,
      submitUserReviewFailure: (_) => true,
      submitUserReviewSuccess: (_) => true,
      orElse: () => false,
    );
  }

  listenSubmitUserReview(BuildContext context, ReviewsState state) {
    const title = 'Submit Review';
    state.maybeWhen(
      submitUserReviewLoading: () {
        showLoadingDialog(context);

        logger.print(
          'Submit User Review Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      submitUserReviewFailure: (NetworkExceptions? networkException) {
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
      submitUserReviewSuccess: (message) {
        context.pop();

        showTOAST(
          context,
          title: 'Review submitted successfully',
          status: ToastStatus.success,
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

  List<ReviewBlockModel> courseReviews = [];

  late final PagingAdapter<ReviewBlockModel> courseReviewsPagingAdapter;

  void refresh() {
    courseReviewsPagingAdapter.refresh();
  }

  void init(BuildContext context) {
    courseReviewsPagingAdapter =
        PagingAdapter(fetchItems: getCoursePaginatedReviews);
    courseReviewsPagingAdapter.init();
    courseReviewsPagingAdapter.initPageRequestListener(
      context,
      courseReviewsPagingAdapter.pagingController,
    );
  }

  Future<void> getCoursePaginatedReviews(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) courseReviews.clear();
    emit(
      const ReviewsState.loadingPagination(),
    );
    final response = await _courseDetailsRepo.getCoursePaginatedReviews(
      courseId: courseId,
      ratingFilter: courseRatingFilter,
      pageKey: pageKey,
    );
    response.when(
      success: (data) async {
        List list = data.data.list;
        courseReviews.addAll(list.whereType());
        courseReviewsPagingAdapter.handlePageData(
          baseModel: data,
          pageData: courseReviews,
          pageKey: pageKey,
          pagingController: courseReviewsPagingAdapter.pagingController,
        );
        emit(
          ReviewsState.successPagination(data.message),
        );
      },
      failure: (networkException) {
        courseReviewsPagingAdapter.pagingController.error = networkException;
        emit(
          ReviewsState.failurePagination(networkException),
        );
      },
    );
  }

  bool buildCoursePaginatedReviewListWhen(
      ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingPagination: () => true,
      successPagination: (_) => true,
      failurePagination: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildCoursePaginatedReviewssList(
    BuildContext context, {
    required PagingController<int, ReviewBlockModel> pagingController,
    required Widget Function(BuildContext, ReviewBlockModel, int) itemBuilder,
  }) =>
      courseReviewsPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const ReviewBlockLoadList(),
        noItemsFoundIndicatorBuilder: EmptyView(
          width: context.width * 0.85,
        ),
      );

  bool listenCoursePaginatedReviewsWhen(
      ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      loadingPagination: () => true,
      failurePagination: (_) => true,
      successPagination: (_) => true,
      orElse: () => false,
    );
  }

  listenCoursePaginatedReviews(BuildContext context, ReviewsState state) {
    const title = 'Course Paginated Reviews';
    state.maybeWhen(
      loadingPagination: () {
        logger.print(
          'Pagination Loading...',
          color: PrintColor.orange,
          title: '$title Loading',
        );
      },
      failurePagination: (NetworkExceptions? networkException) {
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
      successPagination: (String? message) {
        logger.print(
          '$title Pagination Success',
          color: PrintColor.pink,
          title: '$title Pagination Success',
        );
      },
      orElse: () {},
    );
  }

  bool listenWhen(ReviewsState previous, ReviewsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      orElse: () => true,
    );
  }

  listen(BuildContext context, ReviewsState state) {
    const title = 'Review';
    state.maybeWhen(
      fetchCourseLastReviewsLoading: () {
        logger.print(
          'Fetch Course Last Reviews Loading...',
          color: PrintColor.orange,
          title: '$title Fetch Course Course Last Reviews Loading',
        );
      },
      fetchCourseLastReviewsFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Fetch Course Last Reviews Error',
        );
      },
      fetchCourseLastReviewsSuccess: (data, message) {
        logger.print(
          '$title Fetch Course Last Reviews Success',
          color: PrintColor.pink,
          title: '$title Fetch Course Last Reviews Success',
        );
      },
      fetchUserCourseReviewFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title User Review Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Fetch User Course Review Error',
        );
      },
      orElse: () {},
    );
  }
}
