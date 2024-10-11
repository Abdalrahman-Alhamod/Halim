
import 'package:flutter/material.dart';
import '../../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../core/widgets/shimmer_box.dart';

class MentorAboutMeSectionLoading extends StatelessWidget {
  const MentorAboutMeSectionLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        ShimmerBox(
          height: 18,
          width: context.width * 0.9,
        ),
        const SizedBox(
          height: 4,
        ),
        ShimmerBox(
          height: 18,
          width: context.width * 0.9,
        ),
        const SizedBox(
          height: 4,
        ),
        ShimmerBox(
          height: 18,
          width: context.width * 0.7,
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ShimmerBox(
                height: 16,
                width: context.width * 0.95,
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 4,
              ),
              itemCount: 15,
            ),
            const SizedBox(
              height: 4,
            ),
            ShimmerBox(
              height: 14,
              width: context.width * 0.5,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
