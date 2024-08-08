import 'package:flutter/material.dart';

import '../../../../../../core/widgets/shimmer_box.dart';

class CourseVideoCoverLoading extends StatelessWidget {
  const CourseVideoCoverLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ShimmerBox(),
      ),
    );
  }
}
