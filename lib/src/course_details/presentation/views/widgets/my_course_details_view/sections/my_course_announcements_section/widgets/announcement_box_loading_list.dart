import 'package:flutter/material.dart';
import 'package:halim/src/course_details/presentation/views/widgets/my_course_details_view/sections/my_course_announcements_section/widgets/announcement_box_loading.dart';

class AnnouncementBoxLoadingList extends StatelessWidget {
  const AnnouncementBoxLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) => const AnnouncementBoxLoading(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
