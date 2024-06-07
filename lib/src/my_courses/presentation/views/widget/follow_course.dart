import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';

class FollowCourse extends StatefulWidget {
  final String name;
  final int hours;
  final int min;
  final int completedEpisodes;
  final int allEpisodes;
  final String imageUrl;
  const FollowCourse({
    super.key,
    required this.name,
    required this.hours,
    required this.min,
    required this.completedEpisodes,
    required this.allEpisodes,
    required this.imageUrl,
  });

  @override
  State<FollowCourse> createState() => _FollowCourseState();
}

class _FollowCourseState extends State<FollowCourse> {
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
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRoute.kMyCourseDetailsView),
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
              padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.imageUrl),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: AutoSizeText(
                      widget.name,
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      '${widget.hours} ${LocaleKeys.CourseDetails_hrs.tr()} ${widget.min} ${LocaleKeys.CourseDetails_mins.tr()}',
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white54
                            : Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.start,
                    width: 150.0,
                    animation: true,
                    lineHeight: 9.0,
                    percent: widget.completedEpisodes / widget.allEpisodes,
                    barRadius: const Radius.circular(10),
                    backgroundColor: Colors.grey[300],
                    progressColor: getProgressColro(
                        widget.completedEpisodes / widget.allEpisodes),
                    clipLinearGradient: true,
                    trailing: Text(
                      "${widget.completedEpisodes} / ${widget.allEpisodes}",
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Colors.white54
                            : Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Spacer(
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
