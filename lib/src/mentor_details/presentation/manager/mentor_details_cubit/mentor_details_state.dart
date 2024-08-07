part of 'mentor_details_cubit.dart';

@freezed
class MentorDetailsState with _$MentorDetailsState {
  const factory MentorDetailsState.initial() = _Initial;
  const factory MentorDetailsState.fetchMentorDetailsLoading() =
      _FetchMentorDetailsLoading;
  const factory MentorDetailsState.fetchMentorDetailsFailure(
      NetworkExceptions? networkException) = _FetchMentorDetailsFailure;
  const factory MentorDetailsState.fetchMentorDetailsSuccess(
          MentorDetailsModel mentorDetailsModel, String? message) =
      _FetchMentorDetailsSuccess;

  const factory MentorDetailsState.loadingMentorCoursesPagination() =
      _LoadingMentorCoursesPagination;
  const factory MentorDetailsState.failureMentorCoursesPagination(
      NetworkExceptions? networkException) = _FailureMentorCoursesPagination;
  const factory MentorDetailsState.successMentorCoursesPagination(
      String? message) = _SuccessMentorCoursesPagination;

  const factory MentorDetailsState.fetchMentorCoursesPageLoading() =
      _FetchMentorCoursesPageLoading;
  const factory MentorDetailsState.fetchMentorCoursesPageFailure(
      NetworkExceptions? networkException) = _FetchMentorCoursesPageFailure;
  const factory MentorDetailsState.fetchMentorCoursesPageSuccess(
          List<CourseCardModel> courses, String? message) =
      _FetchMentorCoursesPageSuccess;

  const factory MentorDetailsState.fetchMentorLastReviewsLoading() =
      _FetchMentorLastReviewsLoading;
  const factory MentorDetailsState.fetchMentorLastReviewsEmpty() =
      _FetchMentorLastReviewsEmpty;
  const factory MentorDetailsState.fetchMentorLastReviewsFailure(
    NetworkExceptions? networkException,
  ) = _FetchMentorLastReviewsFailure;
  const factory MentorDetailsState.fetchMentorLastReviewsSuccess(
    List<ReviewBlockModel> data,
    String? message,
  ) = _FetchMentorLastReviewsSuccess;

  const factory MentorDetailsState.loadingMentorReviewsPagination() =
      _LoadingMentorReviewsPagination;
  const factory MentorDetailsState.failureMentorReviewsPagination(
      NetworkExceptions? networkException) = _FailureMentorReviewsPagination;
  const factory MentorDetailsState.successMentorReviewsPagination(
      String? message) = _SuccessMentorReviewsPagination;
}
