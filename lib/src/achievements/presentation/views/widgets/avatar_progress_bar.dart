import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/network_image_loader.dart';
import 'package:halim/src/achievements/data/models/avatar_model.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class AvatarProgressBar extends StatelessWidget {
  const AvatarProgressBar({
    super.key,
    required this.avatarModel,
  });
  final AvatarModel avatarModel;
  @override
  Widget build(BuildContext context) {
    int current = avatarModel.badgesAchieved ?? 0;
    int total = avatarModel.badgesNeeded ?? 0;
    return Row(
      children: [
        NetworkImageLoader(
          imageUrl: avatarModel.image,
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
                avatarModel.name ?? '',
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
