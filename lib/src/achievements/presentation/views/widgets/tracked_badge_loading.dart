import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/shimmer_box.dart';

class TrackedBadgeLoading extends StatelessWidget {
  const TrackedBadgeLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ShimmerBox(
          height: 80,
          width: 80,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerBox(
                height: 18,
                width: context.width * 0.4,
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const ShimmerBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
