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
}
