import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class AchievementsProgressIndicator extends StatelessWidget {
  const AchievementsProgressIndicator({
    super.key,
    required this.title,
    required this.current,
    required this.total,
    required this.progressColor,
  });
  final String title;
  final int current;
  final int total;
  final Color progressColor;
  @override
  Widget build(BuildContext context) {
    if (current > total) {
      throw ArgumentError('current progress cannot be bigger than total');
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: LinearPercentIndicator(
        // fillColor: AppColors.primaryColor,
        percent: current / total,
        lineHeight: 50,
        backgroundColor:
            context.isDarkMode ? AppColors.darkFlatButtonColor : Colors.grey,
        progressColor: progressColor,
        animation: true,
        animationDuration: 700,
        animateFromLastPercent: true,
        barRadius: Radius.circular(8),
        padding: EdgeInsets.zero,
        isRTL: !context.isEnglish,
        center: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${context.isEnglish ? ' $current / $total' : '$total / $current'}  ${LocaleKeys.Achievements_Sections_Summery_earned.tr()}',
                style: TextStyle(
                  fontSize: 16,
                  color: context.isDarkMode
                      ? Colors.grey.shade300
                      : Colors.grey.shade100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
