import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/translations/local_keys.g.dart';
import 'course_more_details_nav_button.dart';

class CourseMoreDetailsNavBar extends StatefulWidget {
  const CourseMoreDetailsNavBar({
    super.key,
    required this.controller,
    required this.index,
  });
  final PageController controller;
  final int index;
  @override
  State<CourseMoreDetailsNavBar> createState() =>
      _CourseMoreDetailsNavBarState();
}

class _CourseMoreDetailsNavBarState extends State<CourseMoreDetailsNavBar> {
  late int _index;
  @override
  void initState() {
    _index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _index = widget.index;
    return Center(
      child: SizedBox(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            CourseMoreDetailsNavButton(
              isSelected: _index == 0,
              title: LocaleKeys.CourseDetails_Sections_about.tr(),
              onPressed: () {
                setState(() {
                  _index = 0;
                  widget.controller.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 1,
              title: LocaleKeys.CourseDetails_Sections_lessons.tr(),
              onPressed: () {
                setState(() {
                  _index = 1;
                  widget.controller.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 2,
              title: LocaleKeys.CourseDetails_Sections_reviews.tr(),
              onPressed: () {
                setState(() {
                  _index = 2;
                  widget.controller.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 3,
              title: LocaleKeys.CourseDetails_Sections_community.tr(),
              onPressed: () {
                setState(() {
                  _index = 3;
                  widget.controller.animateToPage(
                    3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
