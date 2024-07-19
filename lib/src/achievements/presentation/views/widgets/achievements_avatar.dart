import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/assets/app_font.dart';
import '../../../../../core/assets/app_images.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class AchievementsAvatar extends StatelessWidget {
  const AchievementsAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 105,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              AppImages.testHalimAvatar,
            ),
            radius: 100,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          LocaleKeys.Achievements_Test_halim.tr(),
          style: TextStyle(
            fontSize: 28,
            fontFamily: context.isEnglish ? AppFonts.satisfy : AppFonts.zahey,
            shadows: const [
              Shadow(
                blurRadius: 10.0,
                color: Colors.blue,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
