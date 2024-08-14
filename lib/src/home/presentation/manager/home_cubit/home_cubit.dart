// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  final HomeRepo _homeRepo;

  List<SubcategoryModel> subcategories = [];
    List<CourseCardModel> courses = [];

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

  // List<StudentModel> subcategories = [];
  StudentProfileModel? _user;
  Future<void> getInfStudent({required int studentId}) async {
    emit(
      const HomeState.fetchInfStudentLoading(),
    );
    final response = await _homeRepo.getInfStudent(studentId);
    response.when(
      success: (data) {
        _user = StudentProfileModel();
        emit(
          HomeState.fetchInfStudentSuccess(
            _user as List<StudentProfileModel>,
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


 Future<void> getAllCourses() async {
    emit(const HomeState.fetchCoursesLoading());

    final response = await _homeRepo.getAllCourses();

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
}



