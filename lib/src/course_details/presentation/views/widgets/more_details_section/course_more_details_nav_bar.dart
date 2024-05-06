import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/translations/local_keys.g.dart';
import 'course_more_details_nav_button.dart';

class CourseMoreDetailsNavBar extends StatefulWidget {
  const CourseMoreDetailsNavBar({
    super.key,
  });

  @override
  State<CourseMoreDetailsNavBar> createState() =>
      _CourseMoreDetailsNavBarState();
}

class _CourseMoreDetailsNavBarState extends State<CourseMoreDetailsNavBar> {
  late int _index;
  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
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
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 1,
              title: LocaleKeys.CourseDetails_Sections_lessons.tr(),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 2,
              title: LocaleKeys.CourseDetails_Sections_reviews.tr(),
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
            CourseMoreDetailsNavButton(
              isSelected: _index == 3,
              title: LocaleKeys.CourseDetails_Sections_community.tr(),
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
