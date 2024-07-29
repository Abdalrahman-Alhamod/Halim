import 'package:flutter/material.dart';

import 'card_course_loading.dart';

class CardCourseLoadList extends StatelessWidget {
  const CardCourseLoadList({super.key, this.itemCount = 10});
  final int? itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < (itemCount ?? 0); i++) content(context),
      ],
    );
  }

  content(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: CardCourseLoading(),
    );
  }
}
