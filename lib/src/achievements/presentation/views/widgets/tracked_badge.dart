import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/network_image_loader.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../data/models/badge_model.dart';

class TrackedBadge extends StatelessWidget {
  const TrackedBadge({
    super.key,
    required this.badgeModel,
  });
  final BadgeModel badgeModel;
  @override
  Widget build(BuildContext context) {
    int current = badgeModel.numberAchieved ?? 0;
    int total = badgeModel.requiredNumber ?? 0;
    return Row(
      children: [
        NetworkImageLoader(
          imageUrl: badgeModel.image,
          width: 80,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                badgeModel.name ?? '',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
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
                barRadius: const Radius.circular(8),
                padding: EdgeInsets.zero,
                isRTL: !context.isEnglish,
                center: Text(
                  '${context.isEnglish ? ' $current / $total' : '$total / $current'}  ${LocaleKeys.Achievements_Sections_Summery_earned.tr()}',
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
