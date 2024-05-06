import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/course_details/presentation/views/widgets/course_details_app_bar.dart';
import 'widgets/course_enroll_bottom_sheet.dart';
import 'widgets/main_details_section/course_main_details_section.dart';
import 'widgets/main_details_section/course_video_cover.dart';
import 'widgets/more_details_section/about/course_about_section.dart';
import 'widgets/more_details_section/course_more_details_nav_bar.dart';

class CourseDetailsView extends StatelessWidget {
  const CourseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const CourseEnrollButtomSheet(),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              const CourseVideoCover(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CourseMainDetailsSection(),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: context.isDarkMode
                          ? Colors.grey.shade400
                          : Colors.grey.shade200,
                    ),
                    const CourseMoreDetailsNavBar(),
                    const CourseAboutSection(),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              )
            ],
          ),
          const CourseDetailsAppBar(),
        ],
      ),
    );
  }
}
