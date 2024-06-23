import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class TrackedBadge extends StatelessWidget {
  const TrackedBadge({
    super.key,
    required this.image,
    required this.title,
    required this.current,
    required this.total,
  });
  final String image;
  final String title;
  final int current;
  final int total;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 80,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              LinearPercentIndicator(
                // fillColor: AppColors.primaryColor,
                percent: current / total,
                lineHeight: 40,
                backgroundColor: context.isDarkMode
                    ? AppColors.darkFlatButtonColor
                    : Colors.grey,
                progressColor: AppColors.primaryColor,
                animation: true,
                animationDuration: 700,
                animateFromLastPercent: true,
                barRadius: Radius.circular(8),
                padding: EdgeInsets.zero,
                isRTL: !context.isEnglish,
                center: Text(
                  '${context.isEnglish ? ' ${current} / ${total}' : '${total} / ${current}'}  ${LocaleKeys.Achievements_Sections_Summery_earned.tr()}',
                  style: TextStyle(
                    fontSize: 16,
                    color: context.isDarkMode
                        ? Colors.grey.shade300
                        : Colors.grey.shade100,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
