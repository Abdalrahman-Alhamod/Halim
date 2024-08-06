part of 'course_details_cubit.dart';

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState.initial() = _Initial;

  const factory CourseDetailsState.fetchCourseMainSectionLoading() =
      _FetchCourseMainSectionLoading;
  const factory CourseDetailsState.fetchCourseMainSectionFailure(
      NetworkExceptions? networkException) = _FetchCourseMainSectionFailure;
  const factory CourseDetailsState.fetchCourseMainSectionSuccess(
          CourseMainSectionModel data, String? message) =
      _FetchCourseMainSectionSuccess;

  const factory CourseDetailsState.fetchCourseAboutSectionLoading() =
      _FetchCourseAboutSectionLoading;
  const factory CourseDetailsState.fetchCourseAboutSectionFailure(
      NetworkExceptions? networkException) = _FetchCourseAboutSectionFailure;
  const factory CourseDetailsState.fetchCourseAboutSectionSuccess(
          CourseAboutSectionModel data, String? message) =
      _FetchCourseAboutSectionSuccess;

  const factory CourseDetailsState.loadingCourseLessonsSectionPagination() =
      _LoadingCourseLessonsSectionPagination;
  const factory CourseDetailsState.failureCourseLessonsSectionPagination(
          NetworkExceptions? networkException) =
      _FailureCourseLessonsSectionPagination;
  const factory CourseDetailsState.successCourseLessonsSectionPagination(
      String? message) = _SuccessCourseLessonsSectionPagination;

  const factory CourseDetailsState.fetchCourseLessonDetailsLoading() =
      _FetchCourseLessonDetailsLoading;
  const factory CourseDetailsState.fetchCourseLessonDetailsFailure(
      NetworkExceptions? networkException) = _FetchCourseLessonDetailsFailure;
  const factory CourseDetailsState.fetchCourseLessonDetailsSuccess(
          CourseLessonModel data, String? message) =
      _FetchCourseLessonDetailsSuccess;

      const factory CourseDetailsState.fetchCourseLessonsSectionsPageLoading() =
      _FetchCourseLessonsSectionsPageLoading;
  const factory CourseDetailsState.fetchCourseLessonsSectionsPageFailure(
      NetworkExceptions? networkException) = _FetchCourseLessonsSectionsPageFailure;
  const factory CourseDetailsState.fetchCourseLessonsSectionsPageSuccess(
          List<LessonsSectionModel> courseLessonsSectionsPage, String? message) =
      _FetchCourseLessonsSectionsPageSuccess;

  const factory CourseDetailsState.submitCourseLessonCompletionLoading() =
      _SubmitCourseLessonCompletionLoading;
  const factory CourseDetailsState.submitCourseLessonCompletionFailure(
    NetworkExceptions? networkException,
  ) = _SubmitCourseLessonCompletionFailure;
  const factory CourseDetailsState.submitCourseLessonCompletionSuccess(
    String? message,
  ) = _SubmitCourseLessonCompletionSuccess;

  const factory CourseDetailsState.saveCourseLoading(
    int courseId,
  ) = _SaveCourseLoading;
  const factory CourseDetailsState.saveCourseFailure(
    NetworkExceptions? networkException,
    int courseId,
  ) = _SaveCourseFailure;
  const factory CourseDetailsState.saveCourseSuccess(
    String? message,
    int courseId,
  ) = _SaveCourseSuccess;
  const factory CourseDetailsState.unsaveCourseSuccess(
    String? message,
    int courseId,
  ) = _UnsaveCourseSuccess;
}
