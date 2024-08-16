// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/mentor_card_loading_list.dart';
import 'package:halim/src/home/data/models/adv_model.dart';
import 'package:halim/src/home/data/models/student_profile_model.dart';
import 'package:halim/src/home/domain/repos/home_repo.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import 'package:halim/src/shared/model/mentor_card_model.dart';
import 'package:halim/src/shared/model/subcategory_model.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/utils/pagination_adapter.dart';
import '../../views/widgets/card_course_loading_list.dart';

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

  Future<void> getSubcategories({required int? categoryId}) async {
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
  Future<void> getHomeCourses() async {
    emit(const HomeState.fetchCoursesLoading());

    final response = await _homeRepo.getAllCourses(
        subCategoryId: subCategoryId, pageKay: null);

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

    final response = await _homeRepo.getAllMentors(pageKay: null);

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

  List<CourseCardModel> popularCourses = [];
  int categoryId = -1;
  late final PagingAdapter<CourseCardModel> coursesPagingAdapter;
  void init(BuildContext context) {
    coursesPagingAdapter = PagingAdapter(fetchItems: getPopularCourses);
    coursesPagingAdapter.init();
    coursesPagingAdapter.initPageRequestListener(
      context,
      coursesPagingAdapter.pagingController,
    );
    mentorPagingAdapter = PagingAdapter(fetchItems: getTopMentor);
    mentorPagingAdapter.init();
    mentorPagingAdapter.initPageRequestListener(
      context,
      mentorPagingAdapter.pagingController,
    );
  }

  void refresh() {
    coursesPagingAdapter.refresh();
  }

  Future<void> getPopularCourses(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) popularCourses.clear();
    emit(
      const HomeState.fetchPopularCoursesLoading(),
    );
    final response = await _homeRepo.getAllCourses(
        subCategoryId: subCategoryId, categoryId: categoryId, pageKay: pageKey);
    response.when(
      success: (data) async {
        List list = data.data.list;
        popularCourses.addAll(list.whereType());
        coursesPagingAdapter.handlePageData(
          baseModel: data,
          pageData: popularCourses,
          pageKey: pageKey,
          pagingController: coursesPagingAdapter.pagingController,
        );
        emit(
          HomeState.fetchPopularCoursesSuccess(data.message),
        );
      },
      failure: (networkException) {
        coursesPagingAdapter.pagingController.error = networkException;
        emit(
          HomeState.fetchPopularCoursesFailure(networkException),
        );
      },
    );
  }

  bool buildPopularCoursesWhen(HomeState previous, HomeState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchPopularCoursesLoading: () => true,
      fetchPopularCoursesSuccess: (_) => true,
      fetchPopularCoursesFailure: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildPopularCoursesList(
    BuildContext context, {
    required PagingController<int, CourseCardModel> pagingController,
    required Widget Function(BuildContext, CourseCardModel, int) itemBuilder,
  }) =>
      coursesPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const CardCourseLoadList(),
      );

  List<MentorCardModel> topMentors = [];
  late final PagingAdapter<MentorCardModel> mentorPagingAdapter;

  void refreshMentor() {
    mentorPagingAdapter.refresh();
  }

  Future<void> getTopMentor(BuildContext context,
      {required int? pageKey}) async {
    if ((pageKey ?? 1) == 1) topMentors.clear();
    emit(
      const HomeState.fetchTopMentorsLoading(),
    );
    final response = await _homeRepo.getAllMentors(pageKay: pageKey);
    response.when(
      success: (data) async {
        List list = data.data.list;
        topMentors.addAll(list.whereType());
        mentorPagingAdapter.handlePageData(
          baseModel: data,
          pageData: topMentors,
          pageKey: pageKey,
          pagingController: mentorPagingAdapter.pagingController,
        );
        emit(
          HomeState.fetchTopMentorsSuccess(data.message),
        );
      },
      failure: (networkException) {
        mentorPagingAdapter.pagingController.error = networkException;
        emit(
          HomeState.fetchTopMentorsFailure(networkException),
        );
      },
    );
  }

  bool buildTopMentorWhen(HomeState previous, HomeState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchTopMentorsLoading: () => true,
      fetchTopMentorsSuccess: (_) => true,
      fetchTopMentorsFailure: (_) => true,
      orElse: () => false,
    );
  }

  Widget buildTopMentorList(
    BuildContext context, {
    required PagingController<int, MentorCardModel> pagingController,
    required Widget Function(BuildContext, MentorCardModel, int) itemBuilder,
  }) =>
      mentorPagingAdapter.buildListView(
        context,
        pagingController,
        itemBuilder,
        loadBuilder: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: MentorCardLoadingList(),
        ),
      );

  List<AdvModel> advertisements = [];

  Future<void> getAdvertisements() async {
    emit(
      const HomeState.fetchAdvertisementsLoading(),
    );
    final response = await _homeRepo.getAdvertisements();
    response.when(
      success: (data) async {
        List list = data.data.list;
        advertisements.addAll(list.whereType());

        emit(
          HomeState.fetchAdvertisementsSuccess(advertisements, data.message),
        );
      },
      failure: (networkException) {
        emit(
          HomeState.fetchAdvertisementsFailure(networkException),
        );
      },
    );
  }
}
