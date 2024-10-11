import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../data/models/lesson_block_model.dart';
import '../../../../manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../domain/entities/course_lesson_type.dart';

class CourseLessonBlock extends StatelessWidget {
  const CourseLessonBlock({
    super.key,
    required this.lessonBlockModel,
    required this.sectionId,
  });

  final LessonBlockModel lessonBlockModel;
  final int sectionId;
  @override
  Widget build(BuildContext context) {
    dynamic lesson;
    late CourseLessonType type;
    int questionsNumber = 0;
    lessonBlockModel.when(
      reading: (ReadingBlockModel reading) {
        lesson = reading;
        type = CourseLessonType.reading;
      },
      quiz: (QuizBlockModel quiz) {
        lesson = quiz;
        type = CourseLessonType.quiz;
        questionsNumber = quiz.quizDetails?.questionsNumber ?? 0;
      },
      video: (VideoBlockModel video) {
        lesson = video;
        type = CourseLessonType.video;
      },
    );
    return GestureDetector(
      onTap: lesson.isPreview ?? false
          ? () {
              context.read<CourseDetailsCubit>().sectionId = sectionId;
              context.read<CourseDetailsCubit>().lessonId = lesson.id;
              context.read<CourseDetailsCubit>().getCourseLessonDetails();
              if (type == CourseLessonType.reading) {
                context
                    .read<CourseDetailsCubit>()
                    .submitCourseLessonCompletion();
                GoRouter.of(context).push(AppRoute.kCourseReadingView);
              } else if (type == CourseLessonType.quiz) {
                GoRouter.of(context).push(AppRoute.kCourseQuizView);
              } else if (type == CourseLessonType.video) {
                GoRouter.of(context).push(AppRoute.kCourseVideoView);
              }
            }
          : null,
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
            title: lesson.title ?? '',
            duration: lesson.duration ?? 0,
            isLocked: !(lesson.isPreview ?? false),
            isDone: lesson.isCompleted ?? false,
            questionNumber: questionsNumber,
            isDownloaded: false,
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
    this.questionNumber,
    required this.isDownloaded,
  });

  final CourseLessonType type;
  final String title;
  final int duration;
  final bool isLocked;
  final bool isDone;
  final int? questionNumber;
  final bool isDownloaded;
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
                isLocked: isLocked,
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
                            ? AutoSizeText(
                                '$questionNumber ${LocaleKeys.CourseDetails_Lessons_questions.tr()}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        // TODO implement downloading
        // !isLocked
        //     ? DownloadIconButton(
        //         isDownloaded: isDownloaded,
        //       )
        //     : const SizedBox(),
      ],
    );
  }
}

class CourseLessonIcon extends StatelessWidget {
  const CourseLessonIcon({
    super.key,
    required this.type,
    required this.isDone,
    required this.isLocked,
  });

  final CourseLessonType type;
  final bool isDone;
  final bool isLocked;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.primaryColor.withAlpha(
        20,
      ),
      radius: 22,
      child: isLocked
          ? const LockIcon()
          : isDone
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
    return SvgPicture.asset(
      AppSVGs.lock,
      width: 30,
      colorFilter: ColorFilter.mode(
          context.isDarkMode ? Colors.grey.shade400 : Colors.grey.shade500,
          BlendMode.srcIn),
    );
  }
}

class DownloadIconButton extends StatelessWidget {
  const DownloadIconButton({
    super.key,
    required this.isDownloaded,
  });
  final bool isDownloaded;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        isDownloaded ? Icons.delete : Icons.download,
        color: context.isDarkMode ? Colors.grey.shade400 : Colors.grey.shade500,
      ),
    );
  }
}
