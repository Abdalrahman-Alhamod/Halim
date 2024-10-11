import 'package:flutter/material.dart';
import 'my_course_card_loading.dart';


class MyCourseCardLoadingList extends StatelessWidget {
  const MyCourseCardLoadingList({super.key, this.itemCount = 10});
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
      child: MyCourseCardLoading(),
    );
  }
}
