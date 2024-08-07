part of 'my_courses_cubit.dart';

@freezed
class MyCoursesState with _$MyCoursesState {
  const factory MyCoursesState.initial() = _Initial;

  const factory MyCoursesState.loadingOngoingCoursesPagination() =
      _LoadingOngoingCoursesPagination;
  const factory MyCoursesState.failureOngoingCoursesPagination(
      NetworkExceptions? networkException) = _FailureOngoingCoursesPagination;
  const factory MyCoursesState.successOngoingCoursesPagination(
      String? message) = _SuccessOngoingCoursesPagination;

  const factory MyCoursesState.loadingCompletedCoursesPagination() =
      _LoadingCompletedCoursesPagination;
  const factory MyCoursesState.failureCompletedCoursesPagination(
      NetworkExceptions? networkException) = _FailureCompletedCoursesPagination;
  const factory MyCoursesState.successCompletedCoursesPagination(
      String? message) = _SuccessCompletedCoursesPagination;

  const factory MyCoursesState.loadingSavedCoursesPagination() =
      _LoadingSavedCoursesPagination;
  const factory MyCoursesState.failureSavedCoursesPagination(
      NetworkExceptions? networkException) = _FailureSavedCoursesPagination;
  const factory MyCoursesState.successSavedCoursesPagination(String? message) =
      _SuccessSavedCoursesPagination;
}
