import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/course_details/presentation/views/widgets/video_player_view/custom_video_player.dart';
import 'package:video_player/video_player.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/assets/app_svgs.dart';
import '../../../../../../core/assets/app_videos.dart';

class CourseIntroVideo extends StatefulWidget {
  const CourseIntroVideo({
    super.key,
  });

  @override
  State<CourseIntroVideo> createState() => _CourseIntroVideoState();
}

class _CourseIntroVideoState extends State<CourseIntroVideo> {
  bool _isVideoPlaying = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .28,
      child: _isVideoPlaying ? _buildVideoPlayer() : _buildCoverImage(),
    );
  }

  Widget _buildCoverImage() {
    return Stack(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset(
              AppImages.testCourseCover,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: IconButton(
            onPressed: () {
              setState(() {
                _isVideoPlaying = true;
              });
            },
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    AppSVGs.playCircle,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVideoPlayer() {
    return Center(
      child: CustomVideoPlayer(
        url: AppVideos.test,
        dataSourceType: DataSourceType.asset,
      ),
    );
  }
}
