import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/course_main_section_model.dart';
import '../../../../data/models/level_model.dart';
import '../../../../../shared/model/course_card_model.dart';
import '../../../../../shared/model/subcategory_model.dart';

import '../../../manager/course_details_cubit/course_details_cubit.dart';
import 'bookmark_button.dart';
import 'course_subcategory_box.dart';
import 'course_info.dart';
import 'course_price.dart';
import 'course_title.dart';
import 'rating.dart';

class CourseMainDetailsSection extends StatelessWidget {
  const CourseMainDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().getCourseMainSection();
    CourseMainSectionModel courseMainSectionModel =
        const CourseMainSectionModel();
    return BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: context.read<CourseDetailsCubit>().buildCourseMainSectionWhen,
      listenWhen: context.read<CourseDetailsCubit>().listenWhen,
      listener: context.read<CourseDetailsCubit>().listen,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseMainSectionSuccess: (data, message) {
            courseMainSectionModel = data;
          },
        );
        return context.read<CourseDetailsCubit>().buildCourseMainSection(
              context: context,
              state: state,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 20,
                        child: CourseTitle(
                          title: courseMainSectionModel.title ?? '',
                        ),
                      ),
                      BookmarkButton(
                        isBookmarked: courseMainSectionModel.isSaved ?? false,
                        courseCardModel: CourseCardModel(
                          id: courseMainSectionModel.id,
                          title: courseMainSectionModel.title,
                          image: courseMainSectionModel.image,
                          price: courseMainSectionModel.price,
                          subcategory: courseMainSectionModel.subcategory,
                          reviewsAvg: courseMainSectionModel.reviewsAvg,
                          enrollmentsCount:
                              courseMainSectionModel.enrollmentsCount,
                          isSaved: courseMainSectionModel.isSaved,
                          discount: courseMainSectionModel.discount,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: CourseSubcategoryBox(
                          subcategory: courseMainSectionModel.subcategory ??
                              const SubcategoryModel(),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 1,
                        child: Rating(
                          ratingCount: courseMainSectionModel.reviewsCount ?? 0,
                          ratingAvg: courseMainSectionModel.reviewsAvg ?? 0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CoursePrice(
                    price: courseMainSectionModel.price ?? 0,
                    discount: courseMainSectionModel.discount,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CourseInfo(
                    enrollmentsCount:
                        courseMainSectionModel.enrollmentsCount ?? 0,
                    hoursNum: courseMainSectionModel.numberOfHours ?? 0,
                    level: courseMainSectionModel.level ?? const LevelModel(),
                  ),
                ],
              ),
            );
      },
    );
  }
}
