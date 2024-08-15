import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/shimmer_box.dart';

class AchievementsProgressIndicatorLoading extends StatelessWidget {
  const AchievementsProgressIndicatorLoading({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const ShimmerBox(
            height: 50,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      ShimmerBox(
                        height: 16,
                        width: context.width * 0.05,
                      ),
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      Text(
                        '/',
                        style: TextStyle(
                          fontSize: 16,
                          color: context.isDarkMode
                              ? Colors.grey.shade300
                              : Colors.grey.shade100,
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      ShimmerBox(
                        height: 16,
                        width: context.width * 0.05,
                      ),
                      SizedBox(
                        width: context.width * 0.01,
                      ),
                      Text(
                        LocaleKeys.Achievements_Sections_Summery_earned.tr(),
                        style: TextStyle(
                          fontSize: 16,
                          color: context.isDarkMode
                              ? Colors.grey.shade300
                              : Colors.grey.shade100,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
