part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.fetchSubcategoriesLoading() =
      _FetchSubcategoriesLoading;
  const factory HomeState.fetchSubcategoriesFailure(
      NetworkExceptions? networkException) = _FetchSubcategoriesFailure;
  const factory HomeState.fetchSubcategoriesSuccess(
          List<SubcategoryModel> data, String? message) =
      _FetchSubcategoriesSuccess;

  const factory HomeState.fetchInfStudentLoading() = _FetchInfStudentLoading;
  const factory HomeState.fetchInfStudentFailure(
      NetworkExceptions? networkException) = _FetchInfStudentFailure;
  const factory HomeState.fetchInfStudentSuccess(
          List<StudentProfileModel> data, String? message) =
      _FetchInfStudentSuccess;
}
