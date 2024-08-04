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
  const CourseIntroVideo({super.key});

  @override
  State<CourseIntroVideo> createState() => _CourseIntroVideoState();
}

class _CourseIntroVideoState extends State<CourseIntroVideo> {
  bool _isVideoPlaying = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .28,
      child: _isVideoPlaying
          ? _buildVideoPlayer(context)
          : _buildCoverImage(context),
    );
  }

  Widget _buildCoverImage(BuildContext context) {
    return BlocBuilder<CourseDetailsCubit, CourseDetailsState>(
      buildWhen: context.read<CourseDetailsCubit>().buildCourseMainSectionWhen,
      builder: (context, state) {
        final courseMainSectionModel =
            context.read<CourseDetailsCubit>().courseMainSection;

        if (courseMainSectionModel == null) {
          return context.read<CourseDetailsCubit>().buildCourseVideoCover(
                context: context,
                state: state,
                child: _buildCoverImageContent(context),
              );
        } else {
          return _buildCoverImageContent(context, courseMainSectionModel);
        }
      },
    );
  }

  Widget _buildCoverImageContent(BuildContext context,
      [CourseMainSectionModel? model]) {
    final imageUrl = model?.image ?? '';
    return Stack(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
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
            icon: _buildPlayButton(),
          ),
        ),
      ],
    );
  }

  Widget _buildPlayButton() {
    return ClipRRect(
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
          child: SvgPicture.asset(AppSVGs.playCircle),
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(BuildContext context) {
    final courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection;
    final videoUrl = courseMainSectionModel?.intro ?? '';
    return Center(
      child: CustomVideoPlayer(
        url: videoUrl,
        dataSourceType: DataSourceType.network,
      ),
    );
  }
}
