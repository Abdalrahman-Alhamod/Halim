import 'package:flutter/material.dart';
import 'announcement_box_loading.dart';

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
