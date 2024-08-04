import 'package:flutter/material.dart';

import '../../../../../../core/widgets/shimmer_box.dart';

class CourseReadingLoading extends StatelessWidget {
  const CourseReadingLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          itemBuilder: (context, index) => const ShimmerBox(
                height: 20,
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 30),
    );
  }
}
