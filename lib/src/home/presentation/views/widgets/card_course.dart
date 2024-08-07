import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/helpers/string_helper.dart';
import 'package:halim/src/shared/model/course_card_model.dart';
import '../../../../../core/assets/app_svgs.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/utils/navigation_extra_keys.dart';
import '../../../../../core/utils/network_image_loader.dart';
import '../../../../course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../functions/remove_bookmark_bottom_sheet.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourse extends StatefulWidget {
  final CourseCardModel courseCardModel;
  final bool isEnabled;
  const CardCourse({
    super.key,
    required this.courseCardModel,
    this.isEnabled = true,
  });

  @override
  State<CardCourse> createState() => _CardCourseState();
}

class _CardCourseState extends State<CardCourse> {
  late CourseCardModel courseCardModel;
  @override
  void initState() {
    courseCardModel = widget.courseCardModel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isEnabled) {
          GoRouter.of(context).push(
            AppRoute.kCourseDetailsView,
            extra: {
              NavKeys.courseId: courseCardModel.id,
            },
          );
        }
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: NetworkImageLoader(
                  imageUrl: courseCardModel.image,
                  width: 110,
                  height: 110,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 160),
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 113, 132, 204)
                                .withOpacity(0.25),
                          ),
                          child: AutoSizeText(
                            courseCardModel.subcategory?.name ?? '',
                            maxLines: 1,
                            minFontSize: 8,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const Spacer(),
                        BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
                          buildWhen: (previous, current) => context
                              .read<CourseDetailsCubit>()
                              .buildSaveCourseWhen(
                                  previous, current, courseCardModel.id ?? -1),
                          listenWhen: (previous, current) => context
                              .read<CourseDetailsCubit>()
                              .listenSaveCourseWhen(
                                  previous, current, courseCardModel.id ?? -1),
                          listener: context
                              .read<CourseDetailsCubit>()
                              .listenSaveCourse,
                          builder: (context, state) {
                            bool isBookmarked =
                                courseCardModel.isSaved ?? false;
                            state.whenOrNull(
                              saveCourseSuccess: (message, stateCoursId) {
                                if (stateCoursId == courseCardModel.id) {
                                  isBookmarked = true;
                                  courseCardModel =
                                      courseCardModel.copyWith(isSaved: true);
                                }
                              },
                              unsaveCourseSuccess: (message, stateCoursId) {
                                if (stateCoursId == courseCardModel.id) {
                                  isBookmarked = false;
                                  courseCardModel =
                                      courseCardModel.copyWith(isSaved: false);
                                }
                              },
                            );
                            return context
                                .read<CourseDetailsCubit>()
                                .buildSaveCourseCard(
                                  context: context,
                                  state: state,
                                  child: IconButton(
                                    icon: SvgPicture.asset(
                                      isBookmarked
                                          ? AppSVGs.bookmark
                                          : AppSVGs.bookmarkOutlined,
                                      width: 28,
                                    ),
                                    onPressed: widget.isEnabled
                                        ? () {
                                            if (courseCardModel.isSaved ??
                                                false) {
                                              showRemoveBookmarkBottomSheet(
                                                context: context,
                                                courseCardModel:
                                                    courseCardModel,
                                              );
                                            } else {
                                              context
                                                  .read<CourseDetailsCubit>()
                                                  .saveCourse(
                                                    courseId:
                                                        courseCardModel.id ??
                                                            -1,
                                                  );
                                            }
                                          }
                                        : null,
                                  ),
                                );
                          },
                        ),
                      ],
                    ),
                    AutoSizeText(
                      courseCardModel.title ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${courseCardModel.price ?? 0}  ',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_half_rounded,
                          color: Colors.amber[400],
                          size: 25,
                        ),
                        Text(
                          '  ${StringHelper.formatNum(courseCardModel.reviewsAvg ?? 0)}  | ',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '${courseCardModel.enrollmentsCount ?? 0} ${LocaleKeys.CourseDetails_students.tr()}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
