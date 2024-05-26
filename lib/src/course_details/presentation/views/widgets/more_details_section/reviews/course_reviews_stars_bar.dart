import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';

import 'course_reviews_stars_button.dart';

class CourseReviewsStarsBar extends StatefulWidget {
  const CourseReviewsStarsBar({
    super.key,
  });

  @override
  State<CourseReviewsStarsBar> createState() => _CourseReviewsStarsBarState();
}

class _CourseReviewsStarsBarState extends State<CourseReviewsStarsBar> {
  late int _index;
  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 0;
              });
            },
            isPressed: _index == 0,
            label: LocaleKeys.Buttons_all.tr(),
          ),
          const SizedBox(
            width: 10,
          ),
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 1;
              });
            },
            isPressed: _index == 1,
            label: '5',
          ),
          const SizedBox(
            width: 10,
          ),
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 2;
              });
            },
            isPressed: _index == 2,
            label: '4',
          ),
          const SizedBox(
            width: 10,
          ),
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 3;
              });
            },
            isPressed: _index == 3,
            label: '3',
          ),
          const SizedBox(
            width: 10,
          ),
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 4;
              });
            },
            isPressed: _index == 4,
            label: '2',
          ),
          const SizedBox(
            width: 10,
          ),
          CourseReviewsStarsButton(
            onPressed: () {
              setState(() {
                _index = 5;
              });
            },
            isPressed: _index == 5,
            label: '1',
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
