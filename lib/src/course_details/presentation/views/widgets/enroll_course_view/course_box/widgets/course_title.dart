part of '../course_box.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 8,
      child: AutoSizeText(
        LocaleKeys.CourseDetails_Test_courseTitle.tr(),
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        maxLines: 2,
      ),
    );
  }
}
