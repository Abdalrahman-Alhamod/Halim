import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:halim/core/widgets/refresh_base.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
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
        title: LocaleKeys.CourseDetails_Lessons_Type_video.tr(),
      ),
      body: RefreshBase(
        onRefresh: () =>
            context.read<CourseDetailsCubit>().getCourseLessonDetails(),
        child: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen:
              context.read<CourseDetailsCubit>().buildCourseLessonDetailsWhen,
          listenWhen:
              context.read<CourseDetailsCubit>().listenCourseLessonDetailsWhen,
          listener:
              context.read<CourseDetailsCubit>().listenCourseLessonDetails,
          builder: (context, state) {
            return context
                .read<CourseDetailsCubit>()
                .buildCourseLessonDetailsVideo(
                  context: context,
                  state: state,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomVideoPlayer(
                          url: state.whenOrNull(
                                fetchCourseLessonDetailsSuccess:
                                    (data, message) {
                                  return data.video?.medium?.playbackUrl ?? '';
                                },
                              ) ??
                              '',
                          dataSourceType: DataSourceType.network,
                        ),
                        const SizedBox(height: 20),
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
                        Markdown(
                          data: state.whenOrNull(
                                fetchCourseLessonDetailsSuccess:
                                    (data, message) {
                                  return data.video?.notes ?? '';
                                },
                              ) ??
                              '',
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                        ),
                      ],
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
