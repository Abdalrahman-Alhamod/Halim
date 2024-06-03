import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';

import 'course_reviews_stars_button.dart';
import 'data/stars_bar_item.dart';

class CourseReviewsStarsBar extends StatefulWidget {
  const CourseReviewsStarsBar(
      {super.key, this.startIndex = 0, required this.onChanged});
  final int startIndex;
  final void Function(String value) onChanged;
  @override
  State<CourseReviewsStarsBar> createState() => _CourseReviewsStarsBarState();
}

class _CourseReviewsStarsBarState extends State<CourseReviewsStarsBar> {
  late int _index;
  late List<StarsBarItem> items;
  @override
  void initState() {
    _index = widget.startIndex;
    items = [
      StarsBarItem(label: LocaleKeys.Buttons_all.tr(), value: 'all'),
      StarsBarItem(label: '1', value: '1'),
      StarsBarItem(label: '2', value: '2'),
      StarsBarItem(label: '3', value: '3'),
      StarsBarItem(label: '4', value: '4'),
      StarsBarItem(label: '5', value: '5'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CourseReviewsStarsButton(
                onPressed: () {
                  setState(() {
                    _index = index;
                    widget.onChanged.call(items[index].value);
                  });
                },
                isPressed: _index == index,
                label: items[index].label,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
