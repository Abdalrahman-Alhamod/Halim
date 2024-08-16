part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.fetchSubcategoriesLoading() =
      FetchSubcategoriesLoading;
  const factory HomeState.fetchSubcategoriesFailure(
      NetworkExceptions? networkException) = FetchSubcategoriesFailure;
  const factory HomeState.fetchSubcategoriesSuccess(
      List<SubcategoryModel> data, String? message) = FetchSubcategoriesSuccess;

  const factory HomeState.fetchInfStudentLoading() = FetchInfStudentLoading;
  const factory HomeState.fetchInfStudentFailure(
      NetworkExceptions? networkException) = FetchInfStudentFailure;
  const factory HomeState.fetchInfStudentSuccess(
      StudentProfileModel data, String? message) = FetchInfStudentSuccess;

  const factory HomeState.fetchCoursesLoading() = FetchCoursesLoading;
  const factory HomeState.fetchCoursesFailure(
      NetworkExceptions? networkException) = FetchCoursesFailure;
  const factory HomeState.fetchCoursesSuccess(
      List<CourseCardModel> data, String? message) = FetchCoursesSuccess;

  const factory HomeState.fetchPopularCoursesLoading() =
      FetchPopularCoursesLoading;
  const factory HomeState.fetchPopularCoursesFailure(
      NetworkExceptions? networkException) = FetchPopularCoursesFailure;
  const factory HomeState.fetchPopularCoursesSuccess(String? message) =
      FetchPopularCoursesSuccess;

  const factory HomeState.fetchMentorsLoading() = FetchMentorsLoading;
  const factory HomeState.fetchMentorsFailure(
      NetworkExceptions? networkException) = FetchMentorsFailure;
  const factory HomeState.fetchMentorsSuccess(
      List<MentorCardModel> data, String? message) = FetchMentorsSuccess;

  const factory HomeState.fetchTopMentorsLoading() = FetchTopMentorsLoading;
  const factory HomeState.fetchTopMentorsFailure(
      NetworkExceptions? networkException) = FetchTopMentorsFailure;
  const factory HomeState.fetchTopMentorsSuccess(String? message) =
      FetchTopMentorsSuccess;
      
  const factory HomeState.fetchAdvertisementsLoading() = FetchAdvertisementsLoading;
  const factory HomeState.fetchAdvertisementsFailure(
      NetworkExceptions? networkException) = FetchAdvertisementsFailure;
  const factory HomeState.fetchAdvertisementsSuccess( List<AdvModel> data, String? message) =
       FetchAdvertisementsSuccess;
}
