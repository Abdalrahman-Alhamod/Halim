import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/themes/app_colors.dart';

class CourseLessonBlock extends StatelessWidget {
  const CourseLessonBlock({
    super.key,
    required this.number,
    required this.title,
    required this.duration,
    required this.isLocked,
  });
  final int number;
  final String title;
  final int duration;
  final bool isLocked;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.isDarkMode
            ? AppColors.loginWithButtonDarkColor
            : Colors.white,
        boxShadow: context.isDarkMode
            ? []
            : [
                const BoxShadow(
                  color: Colors.grey,
                  blurRadius: 25,
                  spreadRadius: -10,
                )
              ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primaryColor.withAlpha(
                      20,
                    ),
                    radius: 22,
                    child: Text(
                      number < 10 ? '0$number' : '$number',
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '$duration ${LocaleKeys.CourseDetails_Lessons_min.tr()}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: context.isDarkMode
                                ? Colors.grey.shade400
                                : Colors.grey.shade700,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: isLocked ? null : () {},
              icon: SvgPicture.asset(
                isLocked ? AppSVGs.lock : AppSVGs.playCircle,
                width: 32,
                colorFilter: ColorFilter.mode(
                    isLocked
                        ? context.isDarkMode
                            ? Colors.grey.shade400
                            : Colors.grey.shade500
                        : AppColors.primaryColor,
                    BlendMode.srcIn),
              ),
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
