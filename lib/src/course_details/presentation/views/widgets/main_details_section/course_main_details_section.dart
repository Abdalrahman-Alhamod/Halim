import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 20,
              child: CourseTitle(),
            ),
            BookmarkButton(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: CourseCategoryBox(),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              child: Rating(),
            ),
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
