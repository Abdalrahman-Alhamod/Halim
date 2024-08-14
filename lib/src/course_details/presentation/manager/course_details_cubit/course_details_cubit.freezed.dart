// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDetailsStateCopyWith<$Res> {
  factory $CourseDetailsStateCopyWith(
          CourseDetailsState value, $Res Function(CourseDetailsState) then) =
      _$CourseDetailsStateCopyWithImpl<$Res, CourseDetailsState>;
}

/// @nodoc
class _$CourseDetailsStateCopyWithImpl<$Res, $Val extends CourseDetailsState>
    implements $CourseDetailsStateCopyWith<$Res> {
  _$CourseDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CourseDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CourseDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchCourseMainSectionLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseMainSectionLoadingImplCopyWith(
          _$FetchCourseMainSectionLoadingImpl value,
          $Res Function(_$FetchCourseMainSectionLoadingImpl) then) =
      __$$FetchCourseMainSectionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseMainSectionLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseMainSectionLoadingImpl>
    implements _$$FetchCourseMainSectionLoadingImplCopyWith<$Res> {
  __$$FetchCourseMainSectionLoadingImplCopyWithImpl(
      _$FetchCourseMainSectionLoadingImpl _value,
      $Res Function(_$FetchCourseMainSectionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseMainSectionLoadingImpl
    implements _FetchCourseMainSectionLoading {
  const _$FetchCourseMainSectionLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseMainSectionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseMainSectionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionLoading != null) {
      return fetchCourseMainSectionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionLoading != null) {
      return fetchCourseMainSectionLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseMainSectionLoading implements CourseDetailsState {
  const factory _FetchCourseMainSectionLoading() =
      _$FetchCourseMainSectionLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseMainSectionFailureImplCopyWith<$Res> {
  factory _$$FetchCourseMainSectionFailureImplCopyWith(
          _$FetchCourseMainSectionFailureImpl value,
          $Res Function(_$FetchCourseMainSectionFailureImpl) then) =
      __$$FetchCourseMainSectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseMainSectionFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseMainSectionFailureImpl>
    implements _$$FetchCourseMainSectionFailureImplCopyWith<$Res> {
  __$$FetchCourseMainSectionFailureImplCopyWithImpl(
      _$FetchCourseMainSectionFailureImpl _value,
      $Res Function(_$FetchCourseMainSectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseMainSectionFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseMainSectionFailureImpl
    implements _FetchCourseMainSectionFailure {
  const _$FetchCourseMainSectionFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseMainSectionFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseMainSectionFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseMainSectionFailureImplCopyWith<
          _$FetchCourseMainSectionFailureImpl>
      get copyWith => __$$FetchCourseMainSectionFailureImplCopyWithImpl<
          _$FetchCourseMainSectionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionFailure != null) {
      return fetchCourseMainSectionFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionFailure != null) {
      return fetchCourseMainSectionFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseMainSectionFailure implements CourseDetailsState {
  const factory _FetchCourseMainSectionFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseMainSectionFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseMainSectionFailureImplCopyWith<
          _$FetchCourseMainSectionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseMainSectionSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseMainSectionSuccessImplCopyWith(
          _$FetchCourseMainSectionSuccessImpl value,
          $Res Function(_$FetchCourseMainSectionSuccessImpl) then) =
      __$$FetchCourseMainSectionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseMainSectionModel data, String? message});

  $CourseMainSectionModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$FetchCourseMainSectionSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseMainSectionSuccessImpl>
    implements _$$FetchCourseMainSectionSuccessImplCopyWith<$Res> {
  __$$FetchCourseMainSectionSuccessImplCopyWithImpl(
      _$FetchCourseMainSectionSuccessImpl _value,
      $Res Function(_$FetchCourseMainSectionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseMainSectionSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseMainSectionModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseMainSectionModelCopyWith<$Res> get data {
    return $CourseMainSectionModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FetchCourseMainSectionSuccessImpl
    implements _FetchCourseMainSectionSuccess {
  const _$FetchCourseMainSectionSuccessImpl(this.data, this.message);

  @override
  final CourseMainSectionModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseMainSectionSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseMainSectionSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseMainSectionSuccessImplCopyWith<
          _$FetchCourseMainSectionSuccessImpl>
      get copyWith => __$$FetchCourseMainSectionSuccessImplCopyWithImpl<
          _$FetchCourseMainSectionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionSuccess != null) {
      return fetchCourseMainSectionSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseMainSectionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseMainSectionSuccess != null) {
      return fetchCourseMainSectionSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseMainSectionSuccess implements CourseDetailsState {
  const factory _FetchCourseMainSectionSuccess(
          final CourseMainSectionModel data, final String? message) =
      _$FetchCourseMainSectionSuccessImpl;

  CourseMainSectionModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseMainSectionSuccessImplCopyWith<
          _$FetchCourseMainSectionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseAboutSectionLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseAboutSectionLoadingImplCopyWith(
          _$FetchCourseAboutSectionLoadingImpl value,
          $Res Function(_$FetchCourseAboutSectionLoadingImpl) then) =
      __$$FetchCourseAboutSectionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseAboutSectionLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAboutSectionLoadingImpl>
    implements _$$FetchCourseAboutSectionLoadingImplCopyWith<$Res> {
  __$$FetchCourseAboutSectionLoadingImplCopyWithImpl(
      _$FetchCourseAboutSectionLoadingImpl _value,
      $Res Function(_$FetchCourseAboutSectionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseAboutSectionLoadingImpl
    implements _FetchCourseAboutSectionLoading {
  const _$FetchCourseAboutSectionLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAboutSectionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAboutSectionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionLoading != null) {
      return fetchCourseAboutSectionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionLoading != null) {
      return fetchCourseAboutSectionLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAboutSectionLoading implements CourseDetailsState {
  const factory _FetchCourseAboutSectionLoading() =
      _$FetchCourseAboutSectionLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseAboutSectionFailureImplCopyWith<$Res> {
  factory _$$FetchCourseAboutSectionFailureImplCopyWith(
          _$FetchCourseAboutSectionFailureImpl value,
          $Res Function(_$FetchCourseAboutSectionFailureImpl) then) =
      __$$FetchCourseAboutSectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseAboutSectionFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAboutSectionFailureImpl>
    implements _$$FetchCourseAboutSectionFailureImplCopyWith<$Res> {
  __$$FetchCourseAboutSectionFailureImplCopyWithImpl(
      _$FetchCourseAboutSectionFailureImpl _value,
      $Res Function(_$FetchCourseAboutSectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseAboutSectionFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseAboutSectionFailureImpl
    implements _FetchCourseAboutSectionFailure {
  const _$FetchCourseAboutSectionFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAboutSectionFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAboutSectionFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseAboutSectionFailureImplCopyWith<
          _$FetchCourseAboutSectionFailureImpl>
      get copyWith => __$$FetchCourseAboutSectionFailureImplCopyWithImpl<
          _$FetchCourseAboutSectionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionFailure != null) {
      return fetchCourseAboutSectionFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionFailure != null) {
      return fetchCourseAboutSectionFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAboutSectionFailure implements CourseDetailsState {
  const factory _FetchCourseAboutSectionFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseAboutSectionFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseAboutSectionFailureImplCopyWith<
          _$FetchCourseAboutSectionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseAboutSectionSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseAboutSectionSuccessImplCopyWith(
          _$FetchCourseAboutSectionSuccessImpl value,
          $Res Function(_$FetchCourseAboutSectionSuccessImpl) then) =
      __$$FetchCourseAboutSectionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseAboutSectionModel data, String? message});

  $CourseAboutSectionModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$FetchCourseAboutSectionSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAboutSectionSuccessImpl>
    implements _$$FetchCourseAboutSectionSuccessImplCopyWith<$Res> {
  __$$FetchCourseAboutSectionSuccessImplCopyWithImpl(
      _$FetchCourseAboutSectionSuccessImpl _value,
      $Res Function(_$FetchCourseAboutSectionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseAboutSectionSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseAboutSectionModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseAboutSectionModelCopyWith<$Res> get data {
    return $CourseAboutSectionModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FetchCourseAboutSectionSuccessImpl
    implements _FetchCourseAboutSectionSuccess {
  const _$FetchCourseAboutSectionSuccessImpl(this.data, this.message);

  @override
  final CourseAboutSectionModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAboutSectionSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAboutSectionSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseAboutSectionSuccessImplCopyWith<
          _$FetchCourseAboutSectionSuccessImpl>
      get copyWith => __$$FetchCourseAboutSectionSuccessImplCopyWithImpl<
          _$FetchCourseAboutSectionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionSuccess != null) {
      return fetchCourseAboutSectionSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAboutSectionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAboutSectionSuccess != null) {
      return fetchCourseAboutSectionSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAboutSectionSuccess implements CourseDetailsState {
  const factory _FetchCourseAboutSectionSuccess(
          final CourseAboutSectionModel data, final String? message) =
      _$FetchCourseAboutSectionSuccessImpl;

  CourseAboutSectionModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseAboutSectionSuccessImplCopyWith<
          _$FetchCourseAboutSectionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCourseLessonsSectionPaginationImplCopyWith<$Res> {
  factory _$$LoadingCourseLessonsSectionPaginationImplCopyWith(
          _$LoadingCourseLessonsSectionPaginationImpl value,
          $Res Function(_$LoadingCourseLessonsSectionPaginationImpl) then) =
      __$$LoadingCourseLessonsSectionPaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCourseLessonsSectionPaginationImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$LoadingCourseLessonsSectionPaginationImpl>
    implements _$$LoadingCourseLessonsSectionPaginationImplCopyWith<$Res> {
  __$$LoadingCourseLessonsSectionPaginationImplCopyWithImpl(
      _$LoadingCourseLessonsSectionPaginationImpl _value,
      $Res Function(_$LoadingCourseLessonsSectionPaginationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCourseLessonsSectionPaginationImpl
    implements _LoadingCourseLessonsSectionPagination {
  const _$LoadingCourseLessonsSectionPaginationImpl();

  @override
  String toString() {
    return 'CourseDetailsState.loadingCourseLessonsSectionPagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCourseLessonsSectionPaginationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return loadingCourseLessonsSectionPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return loadingCourseLessonsSectionPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (loadingCourseLessonsSectionPagination != null) {
      return loadingCourseLessonsSectionPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return loadingCourseLessonsSectionPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return loadingCourseLessonsSectionPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (loadingCourseLessonsSectionPagination != null) {
      return loadingCourseLessonsSectionPagination(this);
    }
    return orElse();
  }
}

abstract class _LoadingCourseLessonsSectionPagination
    implements CourseDetailsState {
  const factory _LoadingCourseLessonsSectionPagination() =
      _$LoadingCourseLessonsSectionPaginationImpl;
}

/// @nodoc
abstract class _$$FailureCourseLessonsSectionPaginationImplCopyWith<$Res> {
  factory _$$FailureCourseLessonsSectionPaginationImplCopyWith(
          _$FailureCourseLessonsSectionPaginationImpl value,
          $Res Function(_$FailureCourseLessonsSectionPaginationImpl) then) =
      __$$FailureCourseLessonsSectionPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FailureCourseLessonsSectionPaginationImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FailureCourseLessonsSectionPaginationImpl>
    implements _$$FailureCourseLessonsSectionPaginationImplCopyWith<$Res> {
  __$$FailureCourseLessonsSectionPaginationImplCopyWithImpl(
      _$FailureCourseLessonsSectionPaginationImpl _value,
      $Res Function(_$FailureCourseLessonsSectionPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FailureCourseLessonsSectionPaginationImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FailureCourseLessonsSectionPaginationImpl
    implements _FailureCourseLessonsSectionPagination {
  const _$FailureCourseLessonsSectionPaginationImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.failureCourseLessonsSectionPagination(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureCourseLessonsSectionPaginationImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCourseLessonsSectionPaginationImplCopyWith<
          _$FailureCourseLessonsSectionPaginationImpl>
      get copyWith => __$$FailureCourseLessonsSectionPaginationImplCopyWithImpl<
          _$FailureCourseLessonsSectionPaginationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return failureCourseLessonsSectionPagination(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return failureCourseLessonsSectionPagination?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (failureCourseLessonsSectionPagination != null) {
      return failureCourseLessonsSectionPagination(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return failureCourseLessonsSectionPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return failureCourseLessonsSectionPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (failureCourseLessonsSectionPagination != null) {
      return failureCourseLessonsSectionPagination(this);
    }
    return orElse();
  }
}

abstract class _FailureCourseLessonsSectionPagination
    implements CourseDetailsState {
  const factory _FailureCourseLessonsSectionPagination(
          final NetworkExceptions? networkException) =
      _$FailureCourseLessonsSectionPaginationImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FailureCourseLessonsSectionPaginationImplCopyWith<
          _$FailureCourseLessonsSectionPaginationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCourseLessonsSectionPaginationImplCopyWith<$Res> {
  factory _$$SuccessCourseLessonsSectionPaginationImplCopyWith(
          _$SuccessCourseLessonsSectionPaginationImpl value,
          $Res Function(_$SuccessCourseLessonsSectionPaginationImpl) then) =
      __$$SuccessCourseLessonsSectionPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SuccessCourseLessonsSectionPaginationImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$SuccessCourseLessonsSectionPaginationImpl>
    implements _$$SuccessCourseLessonsSectionPaginationImplCopyWith<$Res> {
  __$$SuccessCourseLessonsSectionPaginationImplCopyWithImpl(
      _$SuccessCourseLessonsSectionPaginationImpl _value,
      $Res Function(_$SuccessCourseLessonsSectionPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SuccessCourseLessonsSectionPaginationImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessCourseLessonsSectionPaginationImpl
    implements _SuccessCourseLessonsSectionPagination {
  const _$SuccessCourseLessonsSectionPaginationImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.successCourseLessonsSectionPagination(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCourseLessonsSectionPaginationImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCourseLessonsSectionPaginationImplCopyWith<
          _$SuccessCourseLessonsSectionPaginationImpl>
      get copyWith => __$$SuccessCourseLessonsSectionPaginationImplCopyWithImpl<
          _$SuccessCourseLessonsSectionPaginationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return successCourseLessonsSectionPagination(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return successCourseLessonsSectionPagination?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (successCourseLessonsSectionPagination != null) {
      return successCourseLessonsSectionPagination(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return successCourseLessonsSectionPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return successCourseLessonsSectionPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (successCourseLessonsSectionPagination != null) {
      return successCourseLessonsSectionPagination(this);
    }
    return orElse();
  }
}

abstract class _SuccessCourseLessonsSectionPagination
    implements CourseDetailsState {
  const factory _SuccessCourseLessonsSectionPagination(final String? message) =
      _$SuccessCourseLessonsSectionPaginationImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$SuccessCourseLessonsSectionPaginationImplCopyWith<
          _$SuccessCourseLessonsSectionPaginationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseLessonDetailsLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseLessonDetailsLoadingImplCopyWith(
          _$FetchCourseLessonDetailsLoadingImpl value,
          $Res Function(_$FetchCourseLessonDetailsLoadingImpl) then) =
      __$$FetchCourseLessonDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseLessonDetailsLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonDetailsLoadingImpl>
    implements _$$FetchCourseLessonDetailsLoadingImplCopyWith<$Res> {
  __$$FetchCourseLessonDetailsLoadingImplCopyWithImpl(
      _$FetchCourseLessonDetailsLoadingImpl _value,
      $Res Function(_$FetchCourseLessonDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseLessonDetailsLoadingImpl
    implements _FetchCourseLessonDetailsLoading {
  const _$FetchCourseLessonDetailsLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsLoading != null) {
      return fetchCourseLessonDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsLoading != null) {
      return fetchCourseLessonDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonDetailsLoading implements CourseDetailsState {
  const factory _FetchCourseLessonDetailsLoading() =
      _$FetchCourseLessonDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseLessonDetailsFailureImplCopyWith<$Res> {
  factory _$$FetchCourseLessonDetailsFailureImplCopyWith(
          _$FetchCourseLessonDetailsFailureImpl value,
          $Res Function(_$FetchCourseLessonDetailsFailureImpl) then) =
      __$$FetchCourseLessonDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseLessonDetailsFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonDetailsFailureImpl>
    implements _$$FetchCourseLessonDetailsFailureImplCopyWith<$Res> {
  __$$FetchCourseLessonDetailsFailureImplCopyWithImpl(
      _$FetchCourseLessonDetailsFailureImpl _value,
      $Res Function(_$FetchCourseLessonDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseLessonDetailsFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseLessonDetailsFailureImpl
    implements _FetchCourseLessonDetailsFailure {
  const _$FetchCourseLessonDetailsFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonDetailsFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonDetailsFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseLessonDetailsFailureImplCopyWith<
          _$FetchCourseLessonDetailsFailureImpl>
      get copyWith => __$$FetchCourseLessonDetailsFailureImplCopyWithImpl<
          _$FetchCourseLessonDetailsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsFailure != null) {
      return fetchCourseLessonDetailsFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsFailure != null) {
      return fetchCourseLessonDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonDetailsFailure implements CourseDetailsState {
  const factory _FetchCourseLessonDetailsFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseLessonDetailsFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseLessonDetailsFailureImplCopyWith<
          _$FetchCourseLessonDetailsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseLessonDetailsSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseLessonDetailsSuccessImplCopyWith(
          _$FetchCourseLessonDetailsSuccessImpl value,
          $Res Function(_$FetchCourseLessonDetailsSuccessImpl) then) =
      __$$FetchCourseLessonDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CourseLessonModel data, String? message});

  $CourseLessonModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$FetchCourseLessonDetailsSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonDetailsSuccessImpl>
    implements _$$FetchCourseLessonDetailsSuccessImplCopyWith<$Res> {
  __$$FetchCourseLessonDetailsSuccessImplCopyWithImpl(
      _$FetchCourseLessonDetailsSuccessImpl _value,
      $Res Function(_$FetchCourseLessonDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseLessonDetailsSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CourseLessonModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseLessonModelCopyWith<$Res> get data {
    return $CourseLessonModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FetchCourseLessonDetailsSuccessImpl
    implements _FetchCourseLessonDetailsSuccess {
  const _$FetchCourseLessonDetailsSuccessImpl(this.data, this.message);

  @override
  final CourseLessonModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonDetailsSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonDetailsSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseLessonDetailsSuccessImplCopyWith<
          _$FetchCourseLessonDetailsSuccessImpl>
      get copyWith => __$$FetchCourseLessonDetailsSuccessImplCopyWithImpl<
          _$FetchCourseLessonDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsSuccess != null) {
      return fetchCourseLessonDetailsSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonDetailsSuccess != null) {
      return fetchCourseLessonDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonDetailsSuccess implements CourseDetailsState {
  const factory _FetchCourseLessonDetailsSuccess(
          final CourseLessonModel data, final String? message) =
      _$FetchCourseLessonDetailsSuccessImpl;

  CourseLessonModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseLessonDetailsSuccessImplCopyWith<
          _$FetchCourseLessonDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseLessonsSectionsPageLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseLessonsSectionsPageLoadingImplCopyWith(
          _$FetchCourseLessonsSectionsPageLoadingImpl value,
          $Res Function(_$FetchCourseLessonsSectionsPageLoadingImpl) then) =
      __$$FetchCourseLessonsSectionsPageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseLessonsSectionsPageLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonsSectionsPageLoadingImpl>
    implements _$$FetchCourseLessonsSectionsPageLoadingImplCopyWith<$Res> {
  __$$FetchCourseLessonsSectionsPageLoadingImplCopyWithImpl(
      _$FetchCourseLessonsSectionsPageLoadingImpl _value,
      $Res Function(_$FetchCourseLessonsSectionsPageLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseLessonsSectionsPageLoadingImpl
    implements _FetchCourseLessonsSectionsPageLoading {
  const _$FetchCourseLessonsSectionsPageLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonsSectionsPageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonsSectionsPageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageLoading != null) {
      return fetchCourseLessonsSectionsPageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageLoading != null) {
      return fetchCourseLessonsSectionsPageLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonsSectionsPageLoading
    implements CourseDetailsState {
  const factory _FetchCourseLessonsSectionsPageLoading() =
      _$FetchCourseLessonsSectionsPageLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseLessonsSectionsPageFailureImplCopyWith<$Res> {
  factory _$$FetchCourseLessonsSectionsPageFailureImplCopyWith(
          _$FetchCourseLessonsSectionsPageFailureImpl value,
          $Res Function(_$FetchCourseLessonsSectionsPageFailureImpl) then) =
      __$$FetchCourseLessonsSectionsPageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseLessonsSectionsPageFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonsSectionsPageFailureImpl>
    implements _$$FetchCourseLessonsSectionsPageFailureImplCopyWith<$Res> {
  __$$FetchCourseLessonsSectionsPageFailureImplCopyWithImpl(
      _$FetchCourseLessonsSectionsPageFailureImpl _value,
      $Res Function(_$FetchCourseLessonsSectionsPageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseLessonsSectionsPageFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseLessonsSectionsPageFailureImpl
    implements _FetchCourseLessonsSectionsPageFailure {
  const _$FetchCourseLessonsSectionsPageFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonsSectionsPageFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonsSectionsPageFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseLessonsSectionsPageFailureImplCopyWith<
          _$FetchCourseLessonsSectionsPageFailureImpl>
      get copyWith => __$$FetchCourseLessonsSectionsPageFailureImplCopyWithImpl<
          _$FetchCourseLessonsSectionsPageFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageFailure != null) {
      return fetchCourseLessonsSectionsPageFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageFailure != null) {
      return fetchCourseLessonsSectionsPageFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonsSectionsPageFailure
    implements CourseDetailsState {
  const factory _FetchCourseLessonsSectionsPageFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseLessonsSectionsPageFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseLessonsSectionsPageFailureImplCopyWith<
          _$FetchCourseLessonsSectionsPageFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseLessonsSectionsPageSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseLessonsSectionsPageSuccessImplCopyWith(
          _$FetchCourseLessonsSectionsPageSuccessImpl value,
          $Res Function(_$FetchCourseLessonsSectionsPageSuccessImpl) then) =
      __$$FetchCourseLessonsSectionsPageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<LessonsSectionModel> courseLessonsSectionsPage, String? message});
}

/// @nodoc
class __$$FetchCourseLessonsSectionsPageSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseLessonsSectionsPageSuccessImpl>
    implements _$$FetchCourseLessonsSectionsPageSuccessImplCopyWith<$Res> {
  __$$FetchCourseLessonsSectionsPageSuccessImplCopyWithImpl(
      _$FetchCourseLessonsSectionsPageSuccessImpl _value,
      $Res Function(_$FetchCourseLessonsSectionsPageSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseLessonsSectionsPage = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseLessonsSectionsPageSuccessImpl(
      null == courseLessonsSectionsPage
          ? _value._courseLessonsSectionsPage
          : courseLessonsSectionsPage // ignore: cast_nullable_to_non_nullable
              as List<LessonsSectionModel>,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchCourseLessonsSectionsPageSuccessImpl
    implements _FetchCourseLessonsSectionsPageSuccess {
  const _$FetchCourseLessonsSectionsPageSuccessImpl(
      final List<LessonsSectionModel> courseLessonsSectionsPage, this.message)
      : _courseLessonsSectionsPage = courseLessonsSectionsPage;

  final List<LessonsSectionModel> _courseLessonsSectionsPage;
  @override
  List<LessonsSectionModel> get courseLessonsSectionsPage {
    if (_courseLessonsSectionsPage is EqualUnmodifiableListView)
      return _courseLessonsSectionsPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseLessonsSectionsPage);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseLessonsSectionsPageSuccess(courseLessonsSectionsPage: $courseLessonsSectionsPage, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseLessonsSectionsPageSuccessImpl &&
            const DeepCollectionEquality().equals(
                other._courseLessonsSectionsPage, _courseLessonsSectionsPage) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_courseLessonsSectionsPage), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseLessonsSectionsPageSuccessImplCopyWith<
          _$FetchCourseLessonsSectionsPageSuccessImpl>
      get copyWith => __$$FetchCourseLessonsSectionsPageSuccessImplCopyWithImpl<
          _$FetchCourseLessonsSectionsPageSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageSuccess(
        courseLessonsSectionsPage, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageSuccess?.call(
        courseLessonsSectionsPage, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageSuccess != null) {
      return fetchCourseLessonsSectionsPageSuccess(
          courseLessonsSectionsPage, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseLessonsSectionsPageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseLessonsSectionsPageSuccess != null) {
      return fetchCourseLessonsSectionsPageSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseLessonsSectionsPageSuccess
    implements CourseDetailsState {
  const factory _FetchCourseLessonsSectionsPageSuccess(
      final List<LessonsSectionModel> courseLessonsSectionsPage,
      final String? message) = _$FetchCourseLessonsSectionsPageSuccessImpl;

  List<LessonsSectionModel> get courseLessonsSectionsPage;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseLessonsSectionsPageSuccessImplCopyWith<
          _$FetchCourseLessonsSectionsPageSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitCourseLessonCompletionLoadingImplCopyWith<$Res> {
  factory _$$SubmitCourseLessonCompletionLoadingImplCopyWith(
          _$SubmitCourseLessonCompletionLoadingImpl value,
          $Res Function(_$SubmitCourseLessonCompletionLoadingImpl) then) =
      __$$SubmitCourseLessonCompletionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitCourseLessonCompletionLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$SubmitCourseLessonCompletionLoadingImpl>
    implements _$$SubmitCourseLessonCompletionLoadingImplCopyWith<$Res> {
  __$$SubmitCourseLessonCompletionLoadingImplCopyWithImpl(
      _$SubmitCourseLessonCompletionLoadingImpl _value,
      $Res Function(_$SubmitCourseLessonCompletionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitCourseLessonCompletionLoadingImpl
    implements _SubmitCourseLessonCompletionLoading {
  const _$SubmitCourseLessonCompletionLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.submitCourseLessonCompletionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCourseLessonCompletionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionLoading != null) {
      return submitCourseLessonCompletionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionLoading != null) {
      return submitCourseLessonCompletionLoading(this);
    }
    return orElse();
  }
}

abstract class _SubmitCourseLessonCompletionLoading
    implements CourseDetailsState {
  const factory _SubmitCourseLessonCompletionLoading() =
      _$SubmitCourseLessonCompletionLoadingImpl;
}

/// @nodoc
abstract class _$$SubmitCourseLessonCompletionFailureImplCopyWith<$Res> {
  factory _$$SubmitCourseLessonCompletionFailureImplCopyWith(
          _$SubmitCourseLessonCompletionFailureImpl value,
          $Res Function(_$SubmitCourseLessonCompletionFailureImpl) then) =
      __$$SubmitCourseLessonCompletionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$SubmitCourseLessonCompletionFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$SubmitCourseLessonCompletionFailureImpl>
    implements _$$SubmitCourseLessonCompletionFailureImplCopyWith<$Res> {
  __$$SubmitCourseLessonCompletionFailureImplCopyWithImpl(
      _$SubmitCourseLessonCompletionFailureImpl _value,
      $Res Function(_$SubmitCourseLessonCompletionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$SubmitCourseLessonCompletionFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$SubmitCourseLessonCompletionFailureImpl
    implements _SubmitCourseLessonCompletionFailure {
  const _$SubmitCourseLessonCompletionFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.submitCourseLessonCompletionFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCourseLessonCompletionFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitCourseLessonCompletionFailureImplCopyWith<
          _$SubmitCourseLessonCompletionFailureImpl>
      get copyWith => __$$SubmitCourseLessonCompletionFailureImplCopyWithImpl<
          _$SubmitCourseLessonCompletionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionFailure != null) {
      return submitCourseLessonCompletionFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionFailure != null) {
      return submitCourseLessonCompletionFailure(this);
    }
    return orElse();
  }
}

abstract class _SubmitCourseLessonCompletionFailure
    implements CourseDetailsState {
  const factory _SubmitCourseLessonCompletionFailure(
          final NetworkExceptions? networkException) =
      _$SubmitCourseLessonCompletionFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$SubmitCourseLessonCompletionFailureImplCopyWith<
          _$SubmitCourseLessonCompletionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitCourseLessonCompletionSuccessImplCopyWith<$Res> {
  factory _$$SubmitCourseLessonCompletionSuccessImplCopyWith(
          _$SubmitCourseLessonCompletionSuccessImpl value,
          $Res Function(_$SubmitCourseLessonCompletionSuccessImpl) then) =
      __$$SubmitCourseLessonCompletionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SubmitCourseLessonCompletionSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$SubmitCourseLessonCompletionSuccessImpl>
    implements _$$SubmitCourseLessonCompletionSuccessImplCopyWith<$Res> {
  __$$SubmitCourseLessonCompletionSuccessImplCopyWithImpl(
      _$SubmitCourseLessonCompletionSuccessImpl _value,
      $Res Function(_$SubmitCourseLessonCompletionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SubmitCourseLessonCompletionSuccessImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitCourseLessonCompletionSuccessImpl
    implements _SubmitCourseLessonCompletionSuccess {
  const _$SubmitCourseLessonCompletionSuccessImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.submitCourseLessonCompletionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCourseLessonCompletionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitCourseLessonCompletionSuccessImplCopyWith<
          _$SubmitCourseLessonCompletionSuccessImpl>
      get copyWith => __$$SubmitCourseLessonCompletionSuccessImplCopyWithImpl<
          _$SubmitCourseLessonCompletionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionSuccess != null) {
      return submitCourseLessonCompletionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return submitCourseLessonCompletionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (submitCourseLessonCompletionSuccess != null) {
      return submitCourseLessonCompletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitCourseLessonCompletionSuccess
    implements CourseDetailsState {
  const factory _SubmitCourseLessonCompletionSuccess(final String? message) =
      _$SubmitCourseLessonCompletionSuccessImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$SubmitCourseLessonCompletionSuccessImplCopyWith<
          _$SubmitCourseLessonCompletionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCourseLoadingImplCopyWith<$Res> {
  factory _$$SaveCourseLoadingImplCopyWith(_$SaveCourseLoadingImpl value,
          $Res Function(_$SaveCourseLoadingImpl) then) =
      __$$SaveCourseLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int courseId});
}

/// @nodoc
class __$$SaveCourseLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$SaveCourseLoadingImpl>
    implements _$$SaveCourseLoadingImplCopyWith<$Res> {
  __$$SaveCourseLoadingImplCopyWithImpl(_$SaveCourseLoadingImpl _value,
      $Res Function(_$SaveCourseLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$SaveCourseLoadingImpl(
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveCourseLoadingImpl implements _SaveCourseLoading {
  const _$SaveCourseLoadingImpl(this.courseId);

  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsState.saveCourseLoading(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCourseLoadingImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCourseLoadingImplCopyWith<_$SaveCourseLoadingImpl> get copyWith =>
      __$$SaveCourseLoadingImplCopyWithImpl<_$SaveCourseLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return saveCourseLoading(courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return saveCourseLoading?.call(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseLoading != null) {
      return saveCourseLoading(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return saveCourseLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return saveCourseLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseLoading != null) {
      return saveCourseLoading(this);
    }
    return orElse();
  }
}

abstract class _SaveCourseLoading implements CourseDetailsState {
  const factory _SaveCourseLoading(final int courseId) =
      _$SaveCourseLoadingImpl;

  int get courseId;
  @JsonKey(ignore: true)
  _$$SaveCourseLoadingImplCopyWith<_$SaveCourseLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCourseFailureImplCopyWith<$Res> {
  factory _$$SaveCourseFailureImplCopyWith(_$SaveCourseFailureImpl value,
          $Res Function(_$SaveCourseFailureImpl) then) =
      __$$SaveCourseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException, int courseId});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$SaveCourseFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$SaveCourseFailureImpl>
    implements _$$SaveCourseFailureImplCopyWith<$Res> {
  __$$SaveCourseFailureImplCopyWithImpl(_$SaveCourseFailureImpl _value,
      $Res Function(_$SaveCourseFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
    Object? courseId = null,
  }) {
    return _then(_$SaveCourseFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$SaveCourseFailureImpl implements _SaveCourseFailure {
  const _$SaveCourseFailureImpl(this.networkException, this.courseId);

  @override
  final NetworkExceptions? networkException;
  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsState.saveCourseFailure(networkException: $networkException, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCourseFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCourseFailureImplCopyWith<_$SaveCourseFailureImpl> get copyWith =>
      __$$SaveCourseFailureImplCopyWithImpl<_$SaveCourseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return saveCourseFailure(networkException, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return saveCourseFailure?.call(networkException, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseFailure != null) {
      return saveCourseFailure(networkException, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return saveCourseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return saveCourseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseFailure != null) {
      return saveCourseFailure(this);
    }
    return orElse();
  }
}

abstract class _SaveCourseFailure implements CourseDetailsState {
  const factory _SaveCourseFailure(
          final NetworkExceptions? networkException, final int courseId) =
      _$SaveCourseFailureImpl;

  NetworkExceptions? get networkException;
  int get courseId;
  @JsonKey(ignore: true)
  _$$SaveCourseFailureImplCopyWith<_$SaveCourseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCourseSuccessImplCopyWith<$Res> {
  factory _$$SaveCourseSuccessImplCopyWith(_$SaveCourseSuccessImpl value,
          $Res Function(_$SaveCourseSuccessImpl) then) =
      __$$SaveCourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, int courseId});
}

/// @nodoc
class __$$SaveCourseSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$SaveCourseSuccessImpl>
    implements _$$SaveCourseSuccessImplCopyWith<$Res> {
  __$$SaveCourseSuccessImplCopyWithImpl(_$SaveCourseSuccessImpl _value,
      $Res Function(_$SaveCourseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? courseId = null,
  }) {
    return _then(_$SaveCourseSuccessImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveCourseSuccessImpl implements _SaveCourseSuccess {
  const _$SaveCourseSuccessImpl(this.message, this.courseId);

  @override
  final String? message;
  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsState.saveCourseSuccess(message: $message, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCourseSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCourseSuccessImplCopyWith<_$SaveCourseSuccessImpl> get copyWith =>
      __$$SaveCourseSuccessImplCopyWithImpl<_$SaveCourseSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return saveCourseSuccess(message, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return saveCourseSuccess?.call(message, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseSuccess != null) {
      return saveCourseSuccess(message, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return saveCourseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return saveCourseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (saveCourseSuccess != null) {
      return saveCourseSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveCourseSuccess implements CourseDetailsState {
  const factory _SaveCourseSuccess(final String? message, final int courseId) =
      _$SaveCourseSuccessImpl;

  String? get message;
  int get courseId;
  @JsonKey(ignore: true)
  _$$SaveCourseSuccessImplCopyWith<_$SaveCourseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsaveCourseSuccessImplCopyWith<$Res> {
  factory _$$UnsaveCourseSuccessImplCopyWith(_$UnsaveCourseSuccessImpl value,
          $Res Function(_$UnsaveCourseSuccessImpl) then) =
      __$$UnsaveCourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, int courseId});
}

/// @nodoc
class __$$UnsaveCourseSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$UnsaveCourseSuccessImpl>
    implements _$$UnsaveCourseSuccessImplCopyWith<$Res> {
  __$$UnsaveCourseSuccessImplCopyWithImpl(_$UnsaveCourseSuccessImpl _value,
      $Res Function(_$UnsaveCourseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? courseId = null,
  }) {
    return _then(_$UnsaveCourseSuccessImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnsaveCourseSuccessImpl implements _UnsaveCourseSuccess {
  const _$UnsaveCourseSuccessImpl(this.message, this.courseId);

  @override
  final String? message;
  @override
  final int courseId;

  @override
  String toString() {
    return 'CourseDetailsState.unsaveCourseSuccess(message: $message, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsaveCourseSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsaveCourseSuccessImplCopyWith<_$UnsaveCourseSuccessImpl> get copyWith =>
      __$$UnsaveCourseSuccessImplCopyWithImpl<_$UnsaveCourseSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return unsaveCourseSuccess(message, courseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return unsaveCourseSuccess?.call(message, courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (unsaveCourseSuccess != null) {
      return unsaveCourseSuccess(message, courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return unsaveCourseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return unsaveCourseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (unsaveCourseSuccess != null) {
      return unsaveCourseSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnsaveCourseSuccess implements CourseDetailsState {
  const factory _UnsaveCourseSuccess(
      final String? message, final int courseId) = _$UnsaveCourseSuccessImpl;

  String? get message;
  int get courseId;
  @JsonKey(ignore: true)
  _$$UnsaveCourseSuccessImplCopyWith<_$UnsaveCourseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseAnnouncementsSectionLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseAnnouncementsSectionLoadingImplCopyWith(
          _$FetchCourseAnnouncementsSectionLoadingImpl value,
          $Res Function(_$FetchCourseAnnouncementsSectionLoadingImpl) then) =
      __$$FetchCourseAnnouncementsSectionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseAnnouncementsSectionLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAnnouncementsSectionLoadingImpl>
    implements _$$FetchCourseAnnouncementsSectionLoadingImplCopyWith<$Res> {
  __$$FetchCourseAnnouncementsSectionLoadingImplCopyWithImpl(
      _$FetchCourseAnnouncementsSectionLoadingImpl _value,
      $Res Function(_$FetchCourseAnnouncementsSectionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseAnnouncementsSectionLoadingImpl
    implements _FetchCourseAnnouncementsSectionLoading {
  const _$FetchCourseAnnouncementsSectionLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAnnouncementsSectionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAnnouncementsSectionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionLoading != null) {
      return fetchCourseAnnouncementsSectionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionLoading != null) {
      return fetchCourseAnnouncementsSectionLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAnnouncementsSectionLoading
    implements CourseDetailsState {
  const factory _FetchCourseAnnouncementsSectionLoading() =
      _$FetchCourseAnnouncementsSectionLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseAnnouncementsSectionFailureImplCopyWith<$Res> {
  factory _$$FetchCourseAnnouncementsSectionFailureImplCopyWith(
          _$FetchCourseAnnouncementsSectionFailureImpl value,
          $Res Function(_$FetchCourseAnnouncementsSectionFailureImpl) then) =
      __$$FetchCourseAnnouncementsSectionFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseAnnouncementsSectionFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAnnouncementsSectionFailureImpl>
    implements _$$FetchCourseAnnouncementsSectionFailureImplCopyWith<$Res> {
  __$$FetchCourseAnnouncementsSectionFailureImplCopyWithImpl(
      _$FetchCourseAnnouncementsSectionFailureImpl _value,
      $Res Function(_$FetchCourseAnnouncementsSectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseAnnouncementsSectionFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseAnnouncementsSectionFailureImpl
    implements _FetchCourseAnnouncementsSectionFailure {
  const _$FetchCourseAnnouncementsSectionFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAnnouncementsSectionFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAnnouncementsSectionFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseAnnouncementsSectionFailureImplCopyWith<
          _$FetchCourseAnnouncementsSectionFailureImpl>
      get copyWith =>
          __$$FetchCourseAnnouncementsSectionFailureImplCopyWithImpl<
              _$FetchCourseAnnouncementsSectionFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionFailure != null) {
      return fetchCourseAnnouncementsSectionFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionFailure != null) {
      return fetchCourseAnnouncementsSectionFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAnnouncementsSectionFailure
    implements CourseDetailsState {
  const factory _FetchCourseAnnouncementsSectionFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseAnnouncementsSectionFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseAnnouncementsSectionFailureImplCopyWith<
          _$FetchCourseAnnouncementsSectionFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseAnnouncementsSectionSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseAnnouncementsSectionSuccessImplCopyWith(
          _$FetchCourseAnnouncementsSectionSuccessImpl value,
          $Res Function(_$FetchCourseAnnouncementsSectionSuccessImpl) then) =
      __$$FetchCourseAnnouncementsSectionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AnnouncementBoxModel> data, String? message});
}

/// @nodoc
class __$$FetchCourseAnnouncementsSectionSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseAnnouncementsSectionSuccessImpl>
    implements _$$FetchCourseAnnouncementsSectionSuccessImplCopyWith<$Res> {
  __$$FetchCourseAnnouncementsSectionSuccessImplCopyWithImpl(
      _$FetchCourseAnnouncementsSectionSuccessImpl _value,
      $Res Function(_$FetchCourseAnnouncementsSectionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseAnnouncementsSectionSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementBoxModel>,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchCourseAnnouncementsSectionSuccessImpl
    implements _FetchCourseAnnouncementsSectionSuccess {
  const _$FetchCourseAnnouncementsSectionSuccessImpl(
      final List<AnnouncementBoxModel> data, this.message)
      : _data = data;

  final List<AnnouncementBoxModel> _data;
  @override
  List<AnnouncementBoxModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseAnnouncementsSectionSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseAnnouncementsSectionSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseAnnouncementsSectionSuccessImplCopyWith<
          _$FetchCourseAnnouncementsSectionSuccessImpl>
      get copyWith =>
          __$$FetchCourseAnnouncementsSectionSuccessImplCopyWithImpl<
              _$FetchCourseAnnouncementsSectionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionSuccess != null) {
      return fetchCourseAnnouncementsSectionSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseAnnouncementsSectionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseAnnouncementsSectionSuccess != null) {
      return fetchCourseAnnouncementsSectionSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseAnnouncementsSectionSuccess
    implements CourseDetailsState {
  const factory _FetchCourseAnnouncementsSectionSuccess(
          final List<AnnouncementBoxModel> data, final String? message) =
      _$FetchCourseAnnouncementsSectionSuccessImpl;

  List<AnnouncementBoxModel> get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseAnnouncementsSectionSuccessImplCopyWith<
          _$FetchCourseAnnouncementsSectionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseCertificateLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseCertificateLoadingImplCopyWith(
          _$FetchCourseCertificateLoadingImpl value,
          $Res Function(_$FetchCourseCertificateLoadingImpl) then) =
      __$$FetchCourseCertificateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseCertificateLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCertificateLoadingImpl>
    implements _$$FetchCourseCertificateLoadingImplCopyWith<$Res> {
  __$$FetchCourseCertificateLoadingImplCopyWithImpl(
      _$FetchCourseCertificateLoadingImpl _value,
      $Res Function(_$FetchCourseCertificateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseCertificateLoadingImpl
    implements _FetchCourseCertificateLoading {
  const _$FetchCourseCertificateLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCertificateLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCertificateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCertificateLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateLoading != null) {
      return fetchCourseCertificateLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCertificateLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateLoading != null) {
      return fetchCourseCertificateLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCertificateLoading implements CourseDetailsState {
  const factory _FetchCourseCertificateLoading() =
      _$FetchCourseCertificateLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseCertificateFailureImplCopyWith<$Res> {
  factory _$$FetchCourseCertificateFailureImplCopyWith(
          _$FetchCourseCertificateFailureImpl value,
          $Res Function(_$FetchCourseCertificateFailureImpl) then) =
      __$$FetchCourseCertificateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseCertificateFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCertificateFailureImpl>
    implements _$$FetchCourseCertificateFailureImplCopyWith<$Res> {
  __$$FetchCourseCertificateFailureImplCopyWithImpl(
      _$FetchCourseCertificateFailureImpl _value,
      $Res Function(_$FetchCourseCertificateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseCertificateFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseCertificateFailureImpl
    implements _FetchCourseCertificateFailure {
  const _$FetchCourseCertificateFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCertificateFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCertificateFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseCertificateFailureImplCopyWith<
          _$FetchCourseCertificateFailureImpl>
      get copyWith => __$$FetchCourseCertificateFailureImplCopyWithImpl<
          _$FetchCourseCertificateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCertificateFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateFailure != null) {
      return fetchCourseCertificateFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCertificateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateFailure != null) {
      return fetchCourseCertificateFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCertificateFailure implements CourseDetailsState {
  const factory _FetchCourseCertificateFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseCertificateFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseCertificateFailureImplCopyWith<
          _$FetchCourseCertificateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseCertificateSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseCertificateSuccessImplCopyWith(
          _$FetchCourseCertificateSuccessImpl value,
          $Res Function(_$FetchCourseCertificateSuccessImpl) then) =
      __$$FetchCourseCertificateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificateModel data, String? message});

  $CertificateModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$FetchCourseCertificateSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCertificateSuccessImpl>
    implements _$$FetchCourseCertificateSuccessImplCopyWith<$Res> {
  __$$FetchCourseCertificateSuccessImplCopyWithImpl(
      _$FetchCourseCertificateSuccessImpl _value,
      $Res Function(_$FetchCourseCertificateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseCertificateSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CertificateModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CertificateModelCopyWith<$Res> get data {
    return $CertificateModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$FetchCourseCertificateSuccessImpl
    implements _FetchCourseCertificateSuccess {
  const _$FetchCourseCertificateSuccessImpl(this.data, this.message);

  @override
  final CertificateModel data;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCertificateSuccess(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCertificateSuccessImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseCertificateSuccessImplCopyWith<
          _$FetchCourseCertificateSuccessImpl>
      get copyWith => __$$FetchCourseCertificateSuccessImplCopyWithImpl<
          _$FetchCourseCertificateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCertificateSuccess(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateSuccess?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateSuccess != null) {
      return fetchCourseCertificateSuccess(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCertificateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCertificateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCertificateSuccess != null) {
      return fetchCourseCertificateSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCertificateSuccess implements CourseDetailsState {
  const factory _FetchCourseCertificateSuccess(
          final CertificateModel data, final String? message) =
      _$FetchCourseCertificateSuccessImpl;

  CertificateModel get data;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseCertificateSuccessImplCopyWith<
          _$FetchCourseCertificateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseCodeDetailsLoadingImplCopyWith<$Res> {
  factory _$$FetchCourseCodeDetailsLoadingImplCopyWith(
          _$FetchCourseCodeDetailsLoadingImpl value,
          $Res Function(_$FetchCourseCodeDetailsLoadingImpl) then) =
      __$$FetchCourseCodeDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCourseCodeDetailsLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCodeDetailsLoadingImpl>
    implements _$$FetchCourseCodeDetailsLoadingImplCopyWith<$Res> {
  __$$FetchCourseCodeDetailsLoadingImplCopyWithImpl(
      _$FetchCourseCodeDetailsLoadingImpl _value,
      $Res Function(_$FetchCourseCodeDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCourseCodeDetailsLoadingImpl
    implements _FetchCourseCodeDetailsLoading {
  const _$FetchCourseCodeDetailsLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCodeDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCodeDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsLoading != null) {
      return fetchCourseCodeDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsLoading != null) {
      return fetchCourseCodeDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCodeDetailsLoading implements CourseDetailsState {
  const factory _FetchCourseCodeDetailsLoading() =
      _$FetchCourseCodeDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$FetchCourseCodeDetailsFailureImplCopyWith<$Res> {
  factory _$$FetchCourseCodeDetailsFailureImplCopyWith(
          _$FetchCourseCodeDetailsFailureImpl value,
          $Res Function(_$FetchCourseCodeDetailsFailureImpl) then) =
      __$$FetchCourseCodeDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchCourseCodeDetailsFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCodeDetailsFailureImpl>
    implements _$$FetchCourseCodeDetailsFailureImplCopyWith<$Res> {
  __$$FetchCourseCodeDetailsFailureImplCopyWithImpl(
      _$FetchCourseCodeDetailsFailureImpl _value,
      $Res Function(_$FetchCourseCodeDetailsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchCourseCodeDetailsFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchCourseCodeDetailsFailureImpl
    implements _FetchCourseCodeDetailsFailure {
  const _$FetchCourseCodeDetailsFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCodeDetailsFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCodeDetailsFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseCodeDetailsFailureImplCopyWith<
          _$FetchCourseCodeDetailsFailureImpl>
      get copyWith => __$$FetchCourseCodeDetailsFailureImplCopyWithImpl<
          _$FetchCourseCodeDetailsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsFailure != null) {
      return fetchCourseCodeDetailsFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsFailure != null) {
      return fetchCourseCodeDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCodeDetailsFailure implements CourseDetailsState {
  const factory _FetchCourseCodeDetailsFailure(
          final NetworkExceptions? networkException) =
      _$FetchCourseCodeDetailsFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchCourseCodeDetailsFailureImplCopyWith<
          _$FetchCourseCodeDetailsFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCourseCodeDetailsSuccessImplCopyWith<$Res> {
  factory _$$FetchCourseCodeDetailsSuccessImplCopyWith(
          _$FetchCourseCodeDetailsSuccessImpl value,
          $Res Function(_$FetchCourseCodeDetailsSuccessImpl) then) =
      __$$FetchCourseCodeDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DiscountModel discount, String? message});

  $DiscountModelCopyWith<$Res> get discount;
}

/// @nodoc
class __$$FetchCourseCodeDetailsSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res,
        _$FetchCourseCodeDetailsSuccessImpl>
    implements _$$FetchCourseCodeDetailsSuccessImplCopyWith<$Res> {
  __$$FetchCourseCodeDetailsSuccessImplCopyWithImpl(
      _$FetchCourseCodeDetailsSuccessImpl _value,
      $Res Function(_$FetchCourseCodeDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchCourseCodeDetailsSuccessImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as DiscountModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res> get discount {
    return $DiscountModelCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value));
    });
  }
}

/// @nodoc

class _$FetchCourseCodeDetailsSuccessImpl
    implements _FetchCourseCodeDetailsSuccess {
  const _$FetchCourseCodeDetailsSuccessImpl(this.discount, this.message);

  @override
  final DiscountModel discount;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchCourseCodeDetailsSuccess(discount: $discount, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCourseCodeDetailsSuccessImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCourseCodeDetailsSuccessImplCopyWith<
          _$FetchCourseCodeDetailsSuccessImpl>
      get copyWith => __$$FetchCourseCodeDetailsSuccessImplCopyWithImpl<
          _$FetchCourseCodeDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsSuccess(discount, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsSuccess?.call(discount, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsSuccess != null) {
      return fetchCourseCodeDetailsSuccess(discount, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchCourseCodeDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchCourseCodeDetailsSuccess != null) {
      return fetchCourseCodeDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchCourseCodeDetailsSuccess implements CourseDetailsState {
  const factory _FetchCourseCodeDetailsSuccess(
          final DiscountModel discount, final String? message) =
      _$FetchCourseCodeDetailsSuccessImpl;

  DiscountModel get discount;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchCourseCodeDetailsSuccessImplCopyWith<
          _$FetchCourseCodeDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnrollCourseLoadingImplCopyWith<$Res> {
  factory _$$EnrollCourseLoadingImplCopyWith(_$EnrollCourseLoadingImpl value,
          $Res Function(_$EnrollCourseLoadingImpl) then) =
      __$$EnrollCourseLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnrollCourseLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$EnrollCourseLoadingImpl>
    implements _$$EnrollCourseLoadingImplCopyWith<$Res> {
  __$$EnrollCourseLoadingImplCopyWithImpl(_$EnrollCourseLoadingImpl _value,
      $Res Function(_$EnrollCourseLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnrollCourseLoadingImpl implements _EnrollCourseLoading {
  const _$EnrollCourseLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.enrollCourseLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollCourseLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return enrollCourseLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return enrollCourseLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseLoading != null) {
      return enrollCourseLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return enrollCourseLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return enrollCourseLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseLoading != null) {
      return enrollCourseLoading(this);
    }
    return orElse();
  }
}

abstract class _EnrollCourseLoading implements CourseDetailsState {
  const factory _EnrollCourseLoading() = _$EnrollCourseLoadingImpl;
}

/// @nodoc
abstract class _$$EnrollCourseFailureImplCopyWith<$Res> {
  factory _$$EnrollCourseFailureImplCopyWith(_$EnrollCourseFailureImpl value,
          $Res Function(_$EnrollCourseFailureImpl) then) =
      __$$EnrollCourseFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$EnrollCourseFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$EnrollCourseFailureImpl>
    implements _$$EnrollCourseFailureImplCopyWith<$Res> {
  __$$EnrollCourseFailureImplCopyWithImpl(_$EnrollCourseFailureImpl _value,
      $Res Function(_$EnrollCourseFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$EnrollCourseFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$EnrollCourseFailureImpl implements _EnrollCourseFailure {
  const _$EnrollCourseFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.enrollCourseFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollCourseFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollCourseFailureImplCopyWith<_$EnrollCourseFailureImpl> get copyWith =>
      __$$EnrollCourseFailureImplCopyWithImpl<_$EnrollCourseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return enrollCourseFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return enrollCourseFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseFailure != null) {
      return enrollCourseFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return enrollCourseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return enrollCourseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseFailure != null) {
      return enrollCourseFailure(this);
    }
    return orElse();
  }
}

abstract class _EnrollCourseFailure implements CourseDetailsState {
  const factory _EnrollCourseFailure(
      final NetworkExceptions? networkException) = _$EnrollCourseFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$EnrollCourseFailureImplCopyWith<_$EnrollCourseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnrollCourseSuccessImplCopyWith<$Res> {
  factory _$$EnrollCourseSuccessImplCopyWith(_$EnrollCourseSuccessImpl value,
          $Res Function(_$EnrollCourseSuccessImpl) then) =
      __$$EnrollCourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$EnrollCourseSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$EnrollCourseSuccessImpl>
    implements _$$EnrollCourseSuccessImplCopyWith<$Res> {
  __$$EnrollCourseSuccessImplCopyWithImpl(_$EnrollCourseSuccessImpl _value,
      $Res Function(_$EnrollCourseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$EnrollCourseSuccessImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EnrollCourseSuccessImpl implements _EnrollCourseSuccess {
  const _$EnrollCourseSuccessImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.enrollCourseSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollCourseSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollCourseSuccessImplCopyWith<_$EnrollCourseSuccessImpl> get copyWith =>
      __$$EnrollCourseSuccessImplCopyWithImpl<_$EnrollCourseSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return enrollCourseSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return enrollCourseSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseSuccess != null) {
      return enrollCourseSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return enrollCourseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return enrollCourseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (enrollCourseSuccess != null) {
      return enrollCourseSuccess(this);
    }
    return orElse();
  }
}

abstract class _EnrollCourseSuccess implements CourseDetailsState {
  const factory _EnrollCourseSuccess(final String? message) =
      _$EnrollCourseSuccessImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$EnrollCourseSuccessImplCopyWith<_$EnrollCourseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchWalletLoadingImplCopyWith<$Res> {
  factory _$$FetchWalletLoadingImplCopyWith(_$FetchWalletLoadingImpl value,
          $Res Function(_$FetchWalletLoadingImpl) then) =
      __$$FetchWalletLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWalletLoadingImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$FetchWalletLoadingImpl>
    implements _$$FetchWalletLoadingImplCopyWith<$Res> {
  __$$FetchWalletLoadingImplCopyWithImpl(_$FetchWalletLoadingImpl _value,
      $Res Function(_$FetchWalletLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchWalletLoadingImpl implements _FetchWalletLoading {
  const _$FetchWalletLoadingImpl();

  @override
  String toString() {
    return 'CourseDetailsState.fetchWalletLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchWalletLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchWalletLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchWalletLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletLoading != null) {
      return fetchWalletLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchWalletLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchWalletLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletLoading != null) {
      return fetchWalletLoading(this);
    }
    return orElse();
  }
}

abstract class _FetchWalletLoading implements CourseDetailsState {
  const factory _FetchWalletLoading() = _$FetchWalletLoadingImpl;
}

/// @nodoc
abstract class _$$FetchWalletFailureImplCopyWith<$Res> {
  factory _$$FetchWalletFailureImplCopyWith(_$FetchWalletFailureImpl value,
          $Res Function(_$FetchWalletFailureImpl) then) =
      __$$FetchWalletFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions? networkException});

  $NetworkExceptionsCopyWith<$Res>? get networkException;
}

/// @nodoc
class __$$FetchWalletFailureImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$FetchWalletFailureImpl>
    implements _$$FetchWalletFailureImplCopyWith<$Res> {
  __$$FetchWalletFailureImplCopyWithImpl(_$FetchWalletFailureImpl _value,
      $Res Function(_$FetchWalletFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkException = freezed,
  }) {
    return _then(_$FetchWalletFailureImpl(
      freezed == networkException
          ? _value.networkException
          : networkException // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res>? get networkException {
    if (_value.networkException == null) {
      return null;
    }

    return $NetworkExceptionsCopyWith<$Res>(_value.networkException!, (value) {
      return _then(_value.copyWith(networkException: value));
    });
  }
}

/// @nodoc

class _$FetchWalletFailureImpl implements _FetchWalletFailure {
  const _$FetchWalletFailureImpl(this.networkException);

  @override
  final NetworkExceptions? networkException;

  @override
  String toString() {
    return 'CourseDetailsState.fetchWalletFailure(networkException: $networkException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWalletFailureImpl &&
            (identical(other.networkException, networkException) ||
                other.networkException == networkException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWalletFailureImplCopyWith<_$FetchWalletFailureImpl> get copyWith =>
      __$$FetchWalletFailureImplCopyWithImpl<_$FetchWalletFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchWalletFailure(networkException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchWalletFailure?.call(networkException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletFailure != null) {
      return fetchWalletFailure(networkException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchWalletFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchWalletFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletFailure != null) {
      return fetchWalletFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchWalletFailure implements CourseDetailsState {
  const factory _FetchWalletFailure(final NetworkExceptions? networkException) =
      _$FetchWalletFailureImpl;

  NetworkExceptions? get networkException;
  @JsonKey(ignore: true)
  _$$FetchWalletFailureImplCopyWith<_$FetchWalletFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchWalletSuccessImplCopyWith<$Res> {
  factory _$$FetchWalletSuccessImplCopyWith(_$FetchWalletSuccessImpl value,
          $Res Function(_$FetchWalletSuccessImpl) then) =
      __$$FetchWalletSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletModel wallet, String? message});

  $WalletModelCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$FetchWalletSuccessImplCopyWithImpl<$Res>
    extends _$CourseDetailsStateCopyWithImpl<$Res, _$FetchWalletSuccessImpl>
    implements _$$FetchWalletSuccessImplCopyWith<$Res> {
  __$$FetchWalletSuccessImplCopyWithImpl(_$FetchWalletSuccessImpl _value,
      $Res Function(_$FetchWalletSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
    Object? message = freezed,
  }) {
    return _then(_$FetchWalletSuccessImpl(
      null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletModel,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletModelCopyWith<$Res> get wallet {
    return $WalletModelCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc

class _$FetchWalletSuccessImpl implements _FetchWalletSuccess {
  const _$FetchWalletSuccessImpl(this.wallet, this.message);

  @override
  final WalletModel wallet;
  @override
  final String? message;

  @override
  String toString() {
    return 'CourseDetailsState.fetchWalletSuccess(wallet: $wallet, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWalletSuccessImpl &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wallet, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWalletSuccessImplCopyWith<_$FetchWalletSuccessImpl> get copyWith =>
      __$$FetchWalletSuccessImplCopyWithImpl<_$FetchWalletSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchCourseMainSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseMainSectionFailure,
    required TResult Function(CourseMainSectionModel data, String? message)
        fetchCourseMainSectionSuccess,
    required TResult Function() fetchCourseAboutSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAboutSectionFailure,
    required TResult Function(CourseAboutSectionModel data, String? message)
        fetchCourseAboutSectionSuccess,
    required TResult Function() loadingCourseLessonsSectionPagination,
    required TResult Function(NetworkExceptions? networkException)
        failureCourseLessonsSectionPagination,
    required TResult Function(String? message)
        successCourseLessonsSectionPagination,
    required TResult Function() fetchCourseLessonDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonDetailsFailure,
    required TResult Function(CourseLessonModel data, String? message)
        fetchCourseLessonDetailsSuccess,
    required TResult Function() fetchCourseLessonsSectionsPageLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(
            List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function() submitCourseLessonCompletionLoading,
    required TResult Function(NetworkExceptions? networkException)
        submitCourseLessonCompletionFailure,
    required TResult Function(String? message)
        submitCourseLessonCompletionSuccess,
    required TResult Function(int courseId) saveCourseLoading,
    required TResult Function(NetworkExceptions? networkException, int courseId)
        saveCourseFailure,
    required TResult Function(String? message, int courseId) saveCourseSuccess,
    required TResult Function(String? message, int courseId)
        unsaveCourseSuccess,
    required TResult Function() fetchCourseAnnouncementsSectionLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(List<AnnouncementBoxModel> data, String? message)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function() fetchCourseCertificateLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCertificateFailure,
    required TResult Function(CertificateModel data, String? message)
        fetchCourseCertificateSuccess,
    required TResult Function() fetchCourseCodeDetailsLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchCourseCodeDetailsFailure,
    required TResult Function(DiscountModel discount, String? message)
        fetchCourseCodeDetailsSuccess,
    required TResult Function() enrollCourseLoading,
    required TResult Function(NetworkExceptions? networkException)
        enrollCourseFailure,
    required TResult Function(String? message) enrollCourseSuccess,
    required TResult Function() fetchWalletLoading,
    required TResult Function(NetworkExceptions? networkException)
        fetchWalletFailure,
    required TResult Function(WalletModel wallet, String? message)
        fetchWalletSuccess,
  }) {
    return fetchWalletSuccess(wallet, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchCourseMainSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult? Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult? Function()? fetchCourseAboutSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult? Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult? Function()? loadingCourseLessonsSectionPagination,
    TResult? Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult? Function(String? message)? successCourseLessonsSectionPagination,
    TResult? Function()? fetchCourseLessonDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function()? fetchCourseLessonsSectionsPageLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function()? submitCourseLessonCompletionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult? Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult? Function(int courseId)? saveCourseLoading,
    TResult? Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult? Function(String? message, int courseId)? saveCourseSuccess,
    TResult? Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult? Function()? fetchCourseAnnouncementsSectionLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function()? fetchCourseCertificateLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult? Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult? Function()? fetchCourseCodeDetailsLoading,
    TResult? Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function()? enrollCourseLoading,
    TResult? Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult? Function(String? message)? enrollCourseSuccess,
    TResult? Function()? fetchWalletLoading,
    TResult? Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult? Function(WalletModel wallet, String? message)? fetchWalletSuccess,
  }) {
    return fetchWalletSuccess?.call(wallet, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchCourseMainSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseMainSectionFailure,
    TResult Function(CourseMainSectionModel data, String? message)?
        fetchCourseMainSectionSuccess,
    TResult Function()? fetchCourseAboutSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAboutSectionFailure,
    TResult Function(CourseAboutSectionModel data, String? message)?
        fetchCourseAboutSectionSuccess,
    TResult Function()? loadingCourseLessonsSectionPagination,
    TResult Function(NetworkExceptions? networkException)?
        failureCourseLessonsSectionPagination,
    TResult Function(String? message)? successCourseLessonsSectionPagination,
    TResult Function()? fetchCourseLessonDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonDetailsFailure,
    TResult Function(CourseLessonModel data, String? message)?
        fetchCourseLessonDetailsSuccess,
    TResult Function()? fetchCourseLessonsSectionsPageLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(List<LessonsSectionModel> courseLessonsSectionsPage,
            String? message)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function()? submitCourseLessonCompletionLoading,
    TResult Function(NetworkExceptions? networkException)?
        submitCourseLessonCompletionFailure,
    TResult Function(String? message)? submitCourseLessonCompletionSuccess,
    TResult Function(int courseId)? saveCourseLoading,
    TResult Function(NetworkExceptions? networkException, int courseId)?
        saveCourseFailure,
    TResult Function(String? message, int courseId)? saveCourseSuccess,
    TResult Function(String? message, int courseId)? unsaveCourseSuccess,
    TResult Function()? fetchCourseAnnouncementsSectionLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(List<AnnouncementBoxModel> data, String? message)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function()? fetchCourseCertificateLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCertificateFailure,
    TResult Function(CertificateModel data, String? message)?
        fetchCourseCertificateSuccess,
    TResult Function()? fetchCourseCodeDetailsLoading,
    TResult Function(NetworkExceptions? networkException)?
        fetchCourseCodeDetailsFailure,
    TResult Function(DiscountModel discount, String? message)?
        fetchCourseCodeDetailsSuccess,
    TResult Function()? enrollCourseLoading,
    TResult Function(NetworkExceptions? networkException)? enrollCourseFailure,
    TResult Function(String? message)? enrollCourseSuccess,
    TResult Function()? fetchWalletLoading,
    TResult Function(NetworkExceptions? networkException)? fetchWalletFailure,
    TResult Function(WalletModel wallet, String? message)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletSuccess != null) {
      return fetchWalletSuccess(wallet, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchCourseMainSectionLoading value)
        fetchCourseMainSectionLoading,
    required TResult Function(_FetchCourseMainSectionFailure value)
        fetchCourseMainSectionFailure,
    required TResult Function(_FetchCourseMainSectionSuccess value)
        fetchCourseMainSectionSuccess,
    required TResult Function(_FetchCourseAboutSectionLoading value)
        fetchCourseAboutSectionLoading,
    required TResult Function(_FetchCourseAboutSectionFailure value)
        fetchCourseAboutSectionFailure,
    required TResult Function(_FetchCourseAboutSectionSuccess value)
        fetchCourseAboutSectionSuccess,
    required TResult Function(_LoadingCourseLessonsSectionPagination value)
        loadingCourseLessonsSectionPagination,
    required TResult Function(_FailureCourseLessonsSectionPagination value)
        failureCourseLessonsSectionPagination,
    required TResult Function(_SuccessCourseLessonsSectionPagination value)
        successCourseLessonsSectionPagination,
    required TResult Function(_FetchCourseLessonDetailsLoading value)
        fetchCourseLessonDetailsLoading,
    required TResult Function(_FetchCourseLessonDetailsFailure value)
        fetchCourseLessonDetailsFailure,
    required TResult Function(_FetchCourseLessonDetailsSuccess value)
        fetchCourseLessonDetailsSuccess,
    required TResult Function(_FetchCourseLessonsSectionsPageLoading value)
        fetchCourseLessonsSectionsPageLoading,
    required TResult Function(_FetchCourseLessonsSectionsPageFailure value)
        fetchCourseLessonsSectionsPageFailure,
    required TResult Function(_FetchCourseLessonsSectionsPageSuccess value)
        fetchCourseLessonsSectionsPageSuccess,
    required TResult Function(_SubmitCourseLessonCompletionLoading value)
        submitCourseLessonCompletionLoading,
    required TResult Function(_SubmitCourseLessonCompletionFailure value)
        submitCourseLessonCompletionFailure,
    required TResult Function(_SubmitCourseLessonCompletionSuccess value)
        submitCourseLessonCompletionSuccess,
    required TResult Function(_SaveCourseLoading value) saveCourseLoading,
    required TResult Function(_SaveCourseFailure value) saveCourseFailure,
    required TResult Function(_SaveCourseSuccess value) saveCourseSuccess,
    required TResult Function(_UnsaveCourseSuccess value) unsaveCourseSuccess,
    required TResult Function(_FetchCourseAnnouncementsSectionLoading value)
        fetchCourseAnnouncementsSectionLoading,
    required TResult Function(_FetchCourseAnnouncementsSectionFailure value)
        fetchCourseAnnouncementsSectionFailure,
    required TResult Function(_FetchCourseAnnouncementsSectionSuccess value)
        fetchCourseAnnouncementsSectionSuccess,
    required TResult Function(_FetchCourseCertificateLoading value)
        fetchCourseCertificateLoading,
    required TResult Function(_FetchCourseCertificateFailure value)
        fetchCourseCertificateFailure,
    required TResult Function(_FetchCourseCertificateSuccess value)
        fetchCourseCertificateSuccess,
    required TResult Function(_FetchCourseCodeDetailsLoading value)
        fetchCourseCodeDetailsLoading,
    required TResult Function(_FetchCourseCodeDetailsFailure value)
        fetchCourseCodeDetailsFailure,
    required TResult Function(_FetchCourseCodeDetailsSuccess value)
        fetchCourseCodeDetailsSuccess,
    required TResult Function(_EnrollCourseLoading value) enrollCourseLoading,
    required TResult Function(_EnrollCourseFailure value) enrollCourseFailure,
    required TResult Function(_EnrollCourseSuccess value) enrollCourseSuccess,
    required TResult Function(_FetchWalletLoading value) fetchWalletLoading,
    required TResult Function(_FetchWalletFailure value) fetchWalletFailure,
    required TResult Function(_FetchWalletSuccess value) fetchWalletSuccess,
  }) {
    return fetchWalletSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult? Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult? Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult? Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult? Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult? Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult? Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult? Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult? Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult? Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult? Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult? Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult? Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult? Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult? Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult? Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult? Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult? Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult? Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult? Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult? Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult? Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult? Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult? Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult? Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult? Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult? Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult? Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult? Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult? Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult? Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult? Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult? Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult? Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult? Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult? Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult? Function(_FetchWalletSuccess value)? fetchWalletSuccess,
  }) {
    return fetchWalletSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchCourseMainSectionLoading value)?
        fetchCourseMainSectionLoading,
    TResult Function(_FetchCourseMainSectionFailure value)?
        fetchCourseMainSectionFailure,
    TResult Function(_FetchCourseMainSectionSuccess value)?
        fetchCourseMainSectionSuccess,
    TResult Function(_FetchCourseAboutSectionLoading value)?
        fetchCourseAboutSectionLoading,
    TResult Function(_FetchCourseAboutSectionFailure value)?
        fetchCourseAboutSectionFailure,
    TResult Function(_FetchCourseAboutSectionSuccess value)?
        fetchCourseAboutSectionSuccess,
    TResult Function(_LoadingCourseLessonsSectionPagination value)?
        loadingCourseLessonsSectionPagination,
    TResult Function(_FailureCourseLessonsSectionPagination value)?
        failureCourseLessonsSectionPagination,
    TResult Function(_SuccessCourseLessonsSectionPagination value)?
        successCourseLessonsSectionPagination,
    TResult Function(_FetchCourseLessonDetailsLoading value)?
        fetchCourseLessonDetailsLoading,
    TResult Function(_FetchCourseLessonDetailsFailure value)?
        fetchCourseLessonDetailsFailure,
    TResult Function(_FetchCourseLessonDetailsSuccess value)?
        fetchCourseLessonDetailsSuccess,
    TResult Function(_FetchCourseLessonsSectionsPageLoading value)?
        fetchCourseLessonsSectionsPageLoading,
    TResult Function(_FetchCourseLessonsSectionsPageFailure value)?
        fetchCourseLessonsSectionsPageFailure,
    TResult Function(_FetchCourseLessonsSectionsPageSuccess value)?
        fetchCourseLessonsSectionsPageSuccess,
    TResult Function(_SubmitCourseLessonCompletionLoading value)?
        submitCourseLessonCompletionLoading,
    TResult Function(_SubmitCourseLessonCompletionFailure value)?
        submitCourseLessonCompletionFailure,
    TResult Function(_SubmitCourseLessonCompletionSuccess value)?
        submitCourseLessonCompletionSuccess,
    TResult Function(_SaveCourseLoading value)? saveCourseLoading,
    TResult Function(_SaveCourseFailure value)? saveCourseFailure,
    TResult Function(_SaveCourseSuccess value)? saveCourseSuccess,
    TResult Function(_UnsaveCourseSuccess value)? unsaveCourseSuccess,
    TResult Function(_FetchCourseAnnouncementsSectionLoading value)?
        fetchCourseAnnouncementsSectionLoading,
    TResult Function(_FetchCourseAnnouncementsSectionFailure value)?
        fetchCourseAnnouncementsSectionFailure,
    TResult Function(_FetchCourseAnnouncementsSectionSuccess value)?
        fetchCourseAnnouncementsSectionSuccess,
    TResult Function(_FetchCourseCertificateLoading value)?
        fetchCourseCertificateLoading,
    TResult Function(_FetchCourseCertificateFailure value)?
        fetchCourseCertificateFailure,
    TResult Function(_FetchCourseCertificateSuccess value)?
        fetchCourseCertificateSuccess,
    TResult Function(_FetchCourseCodeDetailsLoading value)?
        fetchCourseCodeDetailsLoading,
    TResult Function(_FetchCourseCodeDetailsFailure value)?
        fetchCourseCodeDetailsFailure,
    TResult Function(_FetchCourseCodeDetailsSuccess value)?
        fetchCourseCodeDetailsSuccess,
    TResult Function(_EnrollCourseLoading value)? enrollCourseLoading,
    TResult Function(_EnrollCourseFailure value)? enrollCourseFailure,
    TResult Function(_EnrollCourseSuccess value)? enrollCourseSuccess,
    TResult Function(_FetchWalletLoading value)? fetchWalletLoading,
    TResult Function(_FetchWalletFailure value)? fetchWalletFailure,
    TResult Function(_FetchWalletSuccess value)? fetchWalletSuccess,
    required TResult orElse(),
  }) {
    if (fetchWalletSuccess != null) {
      return fetchWalletSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchWalletSuccess implements CourseDetailsState {
  const factory _FetchWalletSuccess(
          final WalletModel wallet, final String? message) =
      _$FetchWalletSuccessImpl;

  WalletModel get wallet;
  String? get message;
  @JsonKey(ignore: true)
  _$$FetchWalletSuccessImplCopyWith<_$FetchWalletSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
