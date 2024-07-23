import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;
import 'package:chewie/chewie.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import 'package:video_player/video_player.dart';


class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer(
      {super.key, required this.url, required this.dataSourceType});
  final String url;
  final DataSourceType dataSourceType;
  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializeControllers();
  }

  Future<void> initializeControllers() async {
    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _videoPlayerController = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        _videoPlayerController =
            VideoPlayerController.networkUrl(Uri.parse(widget.url));
        break;
      case DataSourceType.file:
        _videoPlayerController = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _videoPlayerController =
            VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
    }
    try {
      await _videoPlayerController.initialize();
      setState(
        () {
          _chewieController = ChewieController(
            videoPlayerController: _videoPlayerController,
            autoPlay: false,
            looping: false,
            autoInitialize: true,
            // customControls: CupertinoControls(
            //   backgroundColor: AppColors.darkColor,
            //   iconColor: AppColors.primaryColor,
            // ),
            customControls: const MaterialDesktopControls(),
            materialProgressColors: ChewieProgressColors(
              playedColor: AppColors.primaryColor,
              handleColor: Colors.white,
              // backgroundColor: Colors.grey.withAlpha(100),
              // bufferedColor: Colors.grey.shade800.withAlpha(150),
            ),
            // placeholder: Container(
            //   color: Colors.black,
            // ),

            optionsTranslation: OptionsTranslation(
              cancelButtonText: LocaleKeys.Buttons_cancel.tr(),
              playbackSpeedButtonText:
                  LocaleKeys.CourseDetails_Video_playbackSpeed.tr(),
              subtitlesButtonText:
                  LocaleKeys.CourseDetails_Video_subtitles.tr(),
            ),
          );
        },
      );
    } catch (e) {
      // Handle error
      debugPrint('Error initializing video: $e');
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: _chewieController != null
            ? Directionality(
                textDirection: material.TextDirection.ltr,
                child: Chewie(
                  controller: _chewieController!,
                ),
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: 20),
                    Text(LocaleKeys.CourseDetails_Video_loading.tr()),
                  ],
                ),
              ),
      ),
    );
  }
}
