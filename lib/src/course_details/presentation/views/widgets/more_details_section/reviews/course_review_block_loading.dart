import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/widgets/shimmer_box.dart';

class CourseReviewBlockLoading extends StatelessWidget {
  const CourseReviewBlockLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    const ClipOval(
                      child: ShimmerBox(
                        height: 56,
                        width: 56,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ShimmerBox(
                      width: context.width * 0.5,
                      height: 20,
                    ),
                  ],
                ),
              ),
              ShimmerBox(
                width: context.width * 0.15,
                height: 32,
                radius: 24,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => ShimmerBox(
            width: context.width * 0.7,
            height: 11,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 5,
          ),
          itemCount: 2,
        ),
        const SizedBox(
          height: 5,
        ),
        ShimmerBox(
          width: context.width * 0.7,
          height: 11,
        ),
        const SizedBox(
          height: 15,
        ),
        ShimmerBox(
          width: context.width * 0.4,
          height: 10,
        ),
      ],
    );
  }
}
