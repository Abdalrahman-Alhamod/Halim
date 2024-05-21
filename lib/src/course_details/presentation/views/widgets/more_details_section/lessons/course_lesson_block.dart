import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/themes/app_colors.dart';

enum CourseLessonType { video, reading, quiz }

class CourseLessonBlock extends StatelessWidget {
  const CourseLessonBlock({
    super.key,
    required this.number,
    required this.title,
    required this.duration,
    required this.isLocked,
    required this.type,
    required this.isDone,
  });
  final int number;
  final String title;
  final int duration;
  final bool isLocked;
  final CourseLessonType type;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 1 / 3,
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: AppColors.primaryColor.withAlpha(30),
            foregroundColor:
                context.isDarkMode ? Colors.white : AppColors.primaryColor,
            icon: Icons.download,
            label: LocaleKeys.Buttons_download.tr(),
            borderRadius: BorderRadius.circular(16),
            autoClose: true,
          ),
        ],
      ),
      child: CourseLessonBlockBox(
        type: type,
        title: title,
        duration: duration,
        isLocked: isLocked,
        isDone: isDone,
      ),
    );
  }
}

class CourseLessonBlockBox extends StatelessWidget {
  const CourseLessonBlockBox({
    super.key,
    required this.type,
    required this.title,
    required this.duration,
    required this.isLocked,
    required this.isDone,
  });

  final CourseLessonType type;
  final String title;
  final int duration;
  final bool isLocked;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (type == CourseLessonType.reading && !isLocked) {
          GoRouter.of(context).push(AppRoute.kCourseReadingView);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : Colors.white,
          boxShadow: context.isDarkMode
              ? []
              : [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                    spreadRadius: -10,
                  )
                ],
          borderRadius: BorderRadius.circular(16),
          border: context.isDarkMode
              ? null
              : Border.all(
                  color: Colors.grey.shade300,
                ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CourseLessonBlockElements(
            type: type,
            title: title,
            duration: duration,
            isLocked: isLocked,
            isDone: isDone,
          ),
        ),
      ),
    );
  }
}

class CourseLessonBlockElements extends StatelessWidget {
  const CourseLessonBlockElements({
    super.key,
    required this.type,
    required this.title,
    required this.duration,
    required this.isLocked,
    required this.isDone,
  });

  final CourseLessonType type;
  final String title;
  final int duration;
  final bool isLocked;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Row(
            children: [
              CourseLessonIcon(
                type: type,
                isDone: isDone,
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CourseLessonTitle(title: title),
                    Row(
                      children: [
                        CourseLessonContentType(type: type),
                        const SizedBox(
                          width: 10,
                        ),
                        CourseLessonDuration(duration: duration),
                        const SizedBox(
                          width: 10,
                        ),
                        type == CourseLessonType.quiz
                            ? Text(
                                '20 ${LocaleKeys.CourseDetails_Lessons_questions.tr()}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              )
                            : Container(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        isLocked
            ? const LockIcon()
            : type == CourseLessonType.video
                ? const PlayIconButton()
                : Container(),
      ],
    );
  }
}

class CourseLessonIcon extends StatelessWidget {
  const CourseLessonIcon({
    super.key,
    required this.type,
    required this.isDone,
  });

  final CourseLessonType type;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor.withAlpha(
        20,
      ),
      radius: 22,
      child: isDone
          ? const Icon(
              Icons.done,
              color: Colors.green,
            )
          : Icon(
              switch (type) {
                CourseLessonType.video => Icons.play_arrow,
                CourseLessonType.reading => Icons.auto_stories,
                CourseLessonType.quiz => Icons.quiz,
              },
              color: AppColors.primaryColor,
            ),
    );
  }
}

class CourseLessonTitle extends StatelessWidget {
  const CourseLessonTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class CourseLessonContentType extends StatelessWidget {
  const CourseLessonContentType({
    super.key,
    required this.type,
  });

  final CourseLessonType type;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (type) {
        CourseLessonType.video =>
          LocaleKeys.CourseDetails_Lessons_Type_video.tr(),
        CourseLessonType.reading =>
          LocaleKeys.CourseDetails_Lessons_Type_reading.tr(),
        CourseLessonType.quiz =>
          LocaleKeys.CourseDetails_Lessons_Type_quiz.tr(),
      },
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class CourseLessonDuration extends StatelessWidget {
  const CourseLessonDuration({
    super.key,
    required this.duration,
  });

  final int duration;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$duration ${LocaleKeys.CourseDetails_Lessons_min.tr()}',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: context.isDarkMode ? Colors.grey.shade400 : Colors.grey.shade700,
      ),
    );
  }
}

class LockIcon extends StatelessWidget {
  const LockIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SvgPicture.asset(
        AppSVGs.lock,
        width: 32,
        colorFilter: ColorFilter.mode(
            context.isDarkMode ? Colors.grey.shade400 : Colors.grey.shade500,
            BlendMode.srcIn),
      ),
    );
  }
}

class PlayIconButton extends StatelessWidget {
  const PlayIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        AppSVGs.playCircle,
        width: 36,
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      style: IconButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
    );
  }
}
