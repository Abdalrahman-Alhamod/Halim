import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/more_details_section/about/mentor_card_loading.dart';

class MentorCardLoadingList extends StatelessWidget {
  const MentorCardLoadingList({super.key, this.itemCount = 10});

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < itemCount ; i++) content(context),
      ],
    );
  }

  content(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MentorCardLoading(),
    );
  }
}
