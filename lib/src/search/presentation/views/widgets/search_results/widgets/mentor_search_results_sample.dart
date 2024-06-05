import 'package:flutter/material.dart';

import '../../../../../../home/presentation/views/widgets/teacher_card.dart';

class MentorsSearchResultsSample extends StatelessWidget {
  const MentorsSearchResultsSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TeacherCard(),
        );
      },
    );
  }
}
