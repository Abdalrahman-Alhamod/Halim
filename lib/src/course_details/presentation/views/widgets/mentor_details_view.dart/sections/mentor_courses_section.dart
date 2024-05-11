import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/course_box/course_box.dart';

class MentorCoursesSection extends StatelessWidget {
  const MentorCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CourseBox(
            onPressed: () {},
          ),
        );
      },
    );
  }
}
