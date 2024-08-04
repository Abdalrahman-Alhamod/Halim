import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/shimmer_box.dart';

class CourseVideoLoading extends StatelessWidget {
  const CourseVideoLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: ShimmerBox(),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '${LocaleKeys.CourseDetails_Video_notes.tr()} :',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const ShimmerBox(
                height: 20,
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
