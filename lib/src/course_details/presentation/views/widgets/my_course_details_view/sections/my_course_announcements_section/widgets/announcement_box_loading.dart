import 'package:flutter/material.dart';
import '../../../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../../core/widgets/avatar_loading.dart';
import '../../../../../../../../../core/widgets/shimmer_box.dart';

class AnnouncementBoxLoading extends StatelessWidget {
  const AnnouncementBoxLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withAlpha(30),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AvatarLoading(
                    radius: 24,
                  ),
                  const SizedBox(
                    width: 8,
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
                          height: 16,
                        ),
                        ShimmerBox(
                          height: 16,
                          width: context.width * 0.7,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerBox(
                            height: 14,
                            width: context.width * 0.8,
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 8,
                          ),
                          itemCount: 4,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ShimmerBox(
                            height: 12,
                            width: context.width * 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ],
    );
  }
}
