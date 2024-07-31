// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/course_details/data/models/course_about_section_model.dart';
import 'package:halim/src/course_details/data/models/course_main_section_model.dart';
import 'package:halim/src/course_details/domain/repos/course_details_repo.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_main_details_section_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/main_details_section/course_video_cover_loading.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_section_loading.dart';
import 'package:halim/src/shared/model/discount_model.dart';

import '../../../../../core/domain/error_handler/network_exceptions.dart';
import '../../../../../core/functions/show_toast.dart';
import '../../../../../core/functions/toast_status.dart';
import '../../../../../core/utils/logger.dart';

part 'course_details_state.dart';
part 'course_details_cubit.freezed.dart';

class CourseDetailsCubit extends Cubit<CourseDetailsState> {
  CourseDetailsCubit(this._courseDetailsRepo)
      : super(const CourseDetailsState.initial());

  final CourseDetailsRepo _courseDetailsRepo;

  int courseId = -1;
  CourseMainSectionModel? courseMainSection;

  Future<void> getCourseMainSection() async {
    emit(
      const CourseDetailsState.fetchCourseMainSectionLoading(),
    );
    final response = await _courseDetailsRepo.getCourseMainSection(courseId);
    response.when(
      success: (data) {
        final courseMainSectionWithoutDiscount = data.data;
        const newDiscount = DiscountModel(id: -1, value: 0.34, code: '8HADJAJ');
        courseMainSection = courseMainSectionWithoutDiscount!.copyWith(
          discount: newDiscount,
        );
        emit(
          CourseDetailsState.fetchCourseMainSectionSuccess(
            courseMainSection!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseMainSectionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseMainSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseMainSectionLoading: () => true,
      fetchCourseMainSectionFailure: (_) => true,
      fetchCourseMainSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseMainSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () =>
          const CourseMainDetailsSectionLoading(),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  Widget buildCourseVideoCover({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseMainSectionLoading: () => const CourseVideoCoverLoading(),
      fetchCourseMainSectionSuccess: (_, __) => child,
      fetchCourseMainSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  CourseAboutSectionModel? courseAboutSection;

  Future<void> getCourseAboutSection() async {
    emit(
      const CourseDetailsState.fetchCourseAboutSectionLoading(),
    );
    final response = await _courseDetailsRepo.getCourseAboutSection(courseId);
    response.when(
      success: (data) {
        courseAboutSection = data.data;
        emit(
          CourseDetailsState.fetchCourseAboutSectionSuccess(
            courseAboutSection!,
            data.message,
          ),
        );
      },
      failure: (networkExceptions) {
        emit(
          CourseDetailsState.fetchCourseAboutSectionFailure(
            networkExceptions,
          ),
        );
      },
    );
  }

  bool buildCourseAboutSectionWhen(
      CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      fetchCourseAboutSectionLoading: () => true,
      fetchCourseAboutSectionFailure: (_) => true,
      fetchCourseAboutSectionSuccess: (_, __) => true,
      orElse: () => false,
    );
  }

  Widget buildCourseAboutSection({
    required BuildContext context,
    required CourseDetailsState state,
    required Widget child,
  }) {
    return state.maybeWhen(
      fetchCourseAboutSectionLoading: () => const CourseAboutSectionLoading(),
      fetchCourseAboutSectionSuccess: (_, __) => child,
      fetchCourseAboutSectionFailure: (_) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  bool listenWhen(CourseDetailsState previous, CourseDetailsState current) {
    if (current == previous) return false;
    return current.maybeWhen(
      orElse: () => true,
    );
  }

  listen(BuildContext context, CourseDetailsState state) {
    const title = 'Course Details';
    state.maybeWhen(
      fetchCourseMainSectionLoading: () {
        logger.print(
          'Fetch Course Main Section Loading...',
          color: PrintColor.orange,
          title: '$title Fetch Course Main Section Loading',
        );
      },
      fetchCourseMainSectionFailure: (NetworkExceptions? networkException) {
        showTOAST(
          context,
          textToast: NetworkExceptions.getErrorMessage(networkException),
          title: '$title Error',
          status: ToastStatus.failure,
        );

        logger.print(
          NetworkExceptions.getErrorMessage(networkException),
          color: PrintColor.red,
          title: '$title Fetch Course Main Section Error',
        );
      },
      fetchCourseMainSectionSuccess: (data, message) {
        logger.print(
          '$title Fetch Course Main Section Success',
          color: PrintColor.pink,
          title: '$title Fetch Course Main Section Success',
        );
      },
      orElse: () {},
    );
  }
}
