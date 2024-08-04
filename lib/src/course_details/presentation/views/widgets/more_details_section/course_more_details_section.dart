import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'about/course_about_section.dart';
import 'lessons/course_lessons_section.dart';
import 'reviews/course_reviews_section.dart';

import '../../../../../../core/translations/locale_keys.g.dart';

class CourseMoreDetailsSection extends StatefulWidget {
  const CourseMoreDetailsSection({super.key});

  @override
  State<CourseMoreDetailsSection> createState() =>
      _CourseMoreDetailsSectionState();
}

class _CourseMoreDetailsSectionState extends State<CourseMoreDetailsSection>
    with SingleTickerProviderStateMixin {
  final tabTitles = [
    LocaleKeys.CourseDetails_Sections_about.tr(),
    LocaleKeys.CourseDetails_Sections_lessons.tr(),
    LocaleKeys.CourseDetails_Sections_reviews.tr(),
  ];
  final tabSections = [
    const CourseAboutSection(),
    const CourseLessonsSection(),
    const CourseReviewsSection(),
  ];
  late TabController _tabController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: TabBar(
            controller: _tabController,
            indicatorColor: AppColors.primaryColor,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.primaryColor,
            labelStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            labelPadding: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            tabs: tabTitles
                .map(
                  (title) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      title,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          dragStartBehavior: DragStartBehavior.down,
          children: [...tabSections],
        )
      ],
    );
  }
}
