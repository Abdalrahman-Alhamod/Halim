import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/course_about_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/commuinty/course_community_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/course_more_details_nav_bar.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/lessons/course_lessons_section.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/reviews/course_reviews_section.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class CourseMoreDetailsSection extends StatefulWidget {
  const CourseMoreDetailsSection({super.key});

  @override
  State<CourseMoreDetailsSection> createState() =>
      _CourseMoreDetailsSectionState();
}

class _CourseMoreDetailsSectionState extends State<CourseMoreDetailsSection> {
  late PageController _controller;
  late int _index;
  @override
  void initState() {
    _controller = PageController();
    _index = 0;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CourseMoreDetailsNavBar(
          controller: _controller,
          index: _index,
        ),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              _index = value;
            });
          },
          controller: _controller,
          dragStartBehavior: DragStartBehavior.down,
          children: const [
            CourseAboutSection(),
            CourseLessonsSection(),
            CourseReviewsSection(),
            CourseCommunitySection(),
          ],
        )
      ],
    );
  }
}
