
import 'package:flutter/material.dart';

import 'bookmark_button.dart';
import 'course_category_box.dart';
import 'course_info.dart';
import 'course_price.dart';
import 'course_title.dart';
import 'rating.dart';

class CourseMainDetailsSection extends StatelessWidget {
  const CourseMainDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CourseTitle(),
            Spacer(
              flex: 1,
            ),
            BookmarkButton(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CourseCategoryBox(),
            SizedBox(
              width: 20,
            ),
            Rating(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        CoursePrice(),
        SizedBox(
          height: 20,
        ),
        CourseInfo(),
      ],
    );
  }
}
