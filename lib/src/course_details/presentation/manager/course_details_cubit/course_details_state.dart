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
          NetworkExceptions? networkException) =
      _FetchCourseLessonsSectionsPageFailure;
  const factory CourseDetailsState.fetchCourseLessonsSectionsPageSuccess(
      List<LessonsSectionModel> courseLessonsSectionsPage,
      String? message) = _FetchCourseLessonsSectionsPageSuccess;

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

  const factory CourseDetailsState.fetchCourseAnnouncementsSectionLoading() =
      _FetchCourseAnnouncementsSectionLoading;
  const factory CourseDetailsState.fetchCourseAnnouncementsSectionFailure(
          NetworkExceptions? networkException) =
      _FetchCourseAnnouncementsSectionFailure;
  const factory CourseDetailsState.fetchCourseAnnouncementsSectionSuccess(
          List<AnnouncementBoxModel> data, String? message) =
      _FetchCourseAnnouncementsSectionSuccess;

  const factory CourseDetailsState.fetchCourseCertificateLoading() =
      _FetchCourseCertificateLoading;
  const factory CourseDetailsState.fetchCourseCertificateFailure(
      NetworkExceptions? networkException) = _FetchCourseCertificateFailure;
  const factory CourseDetailsState.fetchCourseCertificateSuccess(
      CertificateModel data, String? message) = _FetchCourseCertificateSuccess;

  const factory CourseDetailsState.fetchCourseCodeDetailsLoading() =
      _FetchCourseCodeDetailsLoading;
  const factory CourseDetailsState.fetchCourseCodeDetailsFailure(
      NetworkExceptions? networkException) = _FetchCourseCodeDetailsFailure;
  const factory CourseDetailsState.fetchCourseCodeDetailsSuccess(
      DiscountModel discount, String? message) = _FetchCourseCodeDetailsSuccess;

  const factory CourseDetailsState.enrollCourseLoading() = _EnrollCourseLoading;
  const factory CourseDetailsState.enrollCourseFailure(
      NetworkExceptions? networkException) = _EnrollCourseFailure;
  const factory CourseDetailsState.enrollCourseSuccess(String? message) =
      _EnrollCourseSuccess;

  const factory CourseDetailsState.fetchWalletLoading() = _FetchWalletLoading;
  const factory CourseDetailsState.fetchWalletFailure(
      NetworkExceptions? networkException) = _FetchWalletFailure;
  const factory CourseDetailsState.fetchWalletSuccess(
      WalletModel wallet, String? message) = _FetchWalletSuccess;

  const factory CourseDetailsState.fetchCourseCommunityCommentsLoading() =
      _FetchCourseCommunityCommentsLoading;
  const factory CourseDetailsState.fetchCourseCommunityCommentsFailure(
          NetworkExceptions? networkException) =
      _FetchCourseCommunityCommentsFailure;
  const factory CourseDetailsState.fetchCourseCommunityCommentsSuccess(
          List<CommentModel> data, String? message) =
      _FetchCourseCommunityCommentsSuccess;

  const factory CourseDetailsState.postCommunityCommentLoading() =
      _PostCommunityCommentLoading;
  const factory CourseDetailsState.postCommunityCommentFailure(
    NetworkExceptions? networkException,
  ) = _PostCommunityCommentFailure;
  const factory CourseDetailsState.postCommunityCommentSuccess(
    String? message,
  ) = _PostCommunityCommentSuccess;
}
