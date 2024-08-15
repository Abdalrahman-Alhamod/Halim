// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  final HomeRepo _homeRepo;

  List<SubcategoryModel> subcategories = [];
  List<CourseCardModel> courses = [];
  List<MentorCardModel> mentors = [];

  int selectedCategoryIndex = 2;
  void selectCategory(int index) {
    selectedCategoryIndex = index;
    emit(state); // Emit new state if necessary
  }

  Future<void> getSubcategories({required int categoryId}) async {
    emit(
      const HomeState.fetchSubcategoriesLoading(),
    );
    final response = await _homeRepo.getSubcategories(categoryId);
    response.when(
      success: (data) {
        subcategories = List<SubcategoryModel>.from(data.data.list);
        emit(
          HomeState.fetchSubcategoriesSuccess(
            subcategories,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          HomeState.fetchSubcategoriesFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  StudentProfileModel? studentProfileModel;
  Future<void> getInfStudent({required int studentId}) async {
    emit(
      const HomeState.fetchInfStudentLoading(),
    );
    final response = await _homeRepo.getInfStudent(studentId);
    response.when(
      success: (data) {
        studentProfileModel = data.data;
        emit(
          HomeState.fetchInfStudentSuccess(
            studentProfileModel!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          HomeState.fetchInfStudentFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  int subCategoryId = -1;
  Future<void> getAllCourses() async {
    emit(const HomeState.fetchCoursesLoading());

    final response = await _homeRepo.getAllCourses(subCategoryId);

    response.when(
      success: (data) {
        courses = List<CourseCardModel>.from(data.data.list);
        emit(HomeState.fetchCoursesSuccess(courses, data.message));
      },
      failure: (networkExceptions) {
        emit(HomeState.fetchCoursesFailure(networkExceptions));
      },
    );
  }

  Future<void> getAllMentors() async {
    emit(const HomeState.fetchMentorsLoading());

    final response = await _homeRepo.getAllMentors();

    response.when(
      success: (data) {
        emit(HomeState.fetchMentorsSuccess(
            List<MentorCardModel>.from(data.data.list), data.message));
      },
      failure: (networkExceptions) {
        emit(HomeState.fetchMentorsFailure(networkExceptions));
      },
    );
  }
}
