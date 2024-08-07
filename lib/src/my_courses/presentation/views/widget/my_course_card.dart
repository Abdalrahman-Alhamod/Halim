import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/helpers/string_helper.dart';
import 'package:halim/src/my_courses/data/models/my_course_card_model.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/navigation_extra_keys.dart';
import '../../../../../core/utils/network_image_loader.dart';

class MyCourseCard extends StatefulWidget {
  const MyCourseCard({
    super.key,
    required this.myCourseCardModel,
  });
  final MyCourseCardModel myCourseCardModel;
  @override
  State<MyCourseCard> createState() => _MyCourseCardState();
}

class _MyCourseCardState extends State<MyCourseCard> {
  late num numberOfHours;
  late int lessonsCount;
  late int completedLessonsCount;
  Color getProgressColro(double progress) {
    if (progress >= 0 && progress < 0.35) {
      return Colors.green;
    } else if (progress >= 0.35 && progress < 0.7) {
      return Colors.yellow;
    } else if (progress >= 0.7 && progress < 1) {
      return Colors.red;
    } else {
      return AppColors.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    numberOfHours = widget.myCourseCardModel.numberOfHours ?? 0;
    lessonsCount = widget.myCourseCardModel.lessonsCount ?? 0;
    completedLessonsCount = widget.myCourseCardModel.completedLessons ?? 0;
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(
        AppRoute.kMyCourseDetailsView,
        extra: {
          NavKeys.myCourseId: widget.myCourseCardModel.id ?? -1,
        },
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: NetworkImageLoader(
                imageUrl: widget.myCourseCardModel.image,
                width: 110,
                height: 110,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: AutoSizeText(
                      widget.myCourseCardModel.title ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '${StringHelper.getHoursNum(numberOfHours)} ${LocaleKeys.CourseDetails_hrs.tr()} - ${StringHelper.getMinutesNum(numberOfHours)} ${LocaleKeys.CourseDetails_mins.tr()}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.start,
                    animation: true,
                    lineHeight: 9.0,
                    percent: (completedLessonsCount) / (lessonsCount),
                    barRadius: const Radius.circular(10),
                    backgroundColor: Colors.grey[300],
                    progressColor: getProgressColro(
                        (completedLessonsCount) / (lessonsCount)),
                    clipLinearGradient: true,
                    trailing: Text(
                      "$completedLessonsCount / $lessonsCount",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
