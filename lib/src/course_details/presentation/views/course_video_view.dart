import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../../../core/test/app_test.dart';
import 'widgets/video_player_view/course_video_app_bar.dart';
import 'widgets/video_player_view/custom_video_player.dart';
import 'package:video_player/video_player.dart';

// ignore: unused_import
import '../../../../core/assets/app_videos.dart';
import '../../../../core/translations/locale_keys.g.dart';

class CourseVideoView extends StatelessWidget {
  const CourseVideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CourseVideoAppBar(
        title: LocaleKeys.CourseDetails_Test_Lessons_title1.tr(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomVideoPlayer(
              url: AppVideos.test,
              dataSourceType: DataSourceType.asset,
              // url: AppTest.videoUrl,
              // dataSourceType: DataSourceType.network,
            ),
            const SizedBox(height: 20),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${LocaleKeys.CourseDetails_Video_notes.tr()} :',
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Markdown(
              data: AppTest.notesMarkdown,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
