import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../core/utils/context_extensions.dart';
import '../../../../data/models/course_main_section_model.dart';
import '../video_player_view/custom_video_player.dart';
import 'package:video_player/video_player.dart';

import '../../../../../../core/assets/app_svgs.dart';

class CourseIntroVideo extends StatefulWidget {
  const CourseIntroVideo({
    super.key,
  });

  @override
  State<CourseIntroVideo> createState() => _CourseIntroVideoState();
}

class _CourseIntroVideoState extends State<CourseIntroVideo> {
  bool _isVideoPlaying = false;
  CourseMainSectionModel _courseMainSectionModel =
      const CourseMainSectionModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .28,
      child: _isVideoPlaying ? _buildVideoPlayer() : _buildCoverImage(),
    );
  }

  Widget _buildCoverImage() {
    // TODO fix cover disappearing
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: context.read<CourseDetailsCubit>().buildCourseMainSectionWhen,
      builder: (context, state) {
        state.whenOrNull(
          fetchCourseMainSectionSuccess: (data, message) {
            _courseMainSectionModel = data;
          },
        );
        return context.read<CourseDetailsCubit>().buildCourseVideoCover(
              context: context,
              state: state,
              child: Stack(
                children: [
                  Center(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: CachedNetworkImage(
                        imageUrl: _courseMainSectionModel.image ?? '',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const ShimmerBox(),
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
              ),
            );
      },
    );
  }

  Widget _buildVideoPlayer() {
    return Center(
      child: CustomVideoPlayer(
        // TODO test video
        url: _courseMainSectionModel.intro ?? '',
        dataSourceType: DataSourceType.network,
      ),
    );
  }
}
