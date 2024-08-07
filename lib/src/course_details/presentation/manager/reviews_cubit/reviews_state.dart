part of 'reviews_cubit.dart';

@freezed
class ReviewsState with _$ReviewsState {
  const factory ReviewsState.initial() = _Initial;

  const factory ReviewsState.fetchCourseLastReviewsLoading() =
      _FetchCourseLastReviewsLoading;
  const factory ReviewsState.fetchCourseLastReviewsEmpty() =
      _FetchCourseLastReviewsEmpty;
  const factory ReviewsState.fetchCourseLastReviewsFailure(
    NetworkExceptions? networkException,
  ) = _FetchCourseLastReviewsFailure;
  const factory ReviewsState.fetchCourseLastReviewsSuccess(
    List<ReviewBlockModel> data,
    String? message,
  ) = _FetchCourseLastReviewsSuccess;

  const factory ReviewsState.fetchUserCourseReviewLoading() =
      _FetchUserCourseReviewLoading;
  const factory ReviewsState.fetchUserCourseReviewFailure(
    NetworkExceptions? networkException,
  ) = _FetchUserCourseReviewFailure;
  const factory ReviewsState.fetchUserCourseReviewSuccess(
    ReviewBlockModel data,
    String? message,
  ) = _FetchUserCourseReviewSuccess;

  const factory ReviewsState.submitUserReviewLoading() =
      _SubmitUserReviewLoading;
  const factory ReviewsState.submitUserReviewFailure(
    NetworkExceptions? networkException,
  ) = _SubmitUserReviewFailure;
  const factory ReviewsState.submitUserReviewSuccess(
    String? message,
  ) = _SubmitUserReviewSuccess;

  const factory ReviewsState.loadingPagination() = _LoadingPagination;
  const factory ReviewsState.failurePagination(
      NetworkExceptions? networkException) = _FailurePagination;
  const factory ReviewsState.successPagination(String? message) =
      _SuccessPagination;
}
