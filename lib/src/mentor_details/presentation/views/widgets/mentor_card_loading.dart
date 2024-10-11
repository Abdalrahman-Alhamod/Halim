import 'package:flutter/material.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/widgets/shimmer_box.dart';

import '../../../../../core/widgets/avatar_loading.dart';

class MentorCardLoading extends StatelessWidget {
  const MentorCardLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const AvatarLoading(
                radius: 28,
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    ShimmerBox(
                      height: 20,
                      width: context.width * 0.4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ShimmerBox(
                      height: 15,
                      width: context.width * 0.7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
