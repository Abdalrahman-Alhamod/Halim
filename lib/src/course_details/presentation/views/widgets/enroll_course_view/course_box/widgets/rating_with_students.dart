part of '../course_box.dart';

class RatingWithStudents extends StatelessWidget {
  const RatingWithStudents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var autoSizeGroup = AutoSizeGroup();
    return Flexible(
      flex: 5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppSVGs.stars,
            width: 15,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 1,
            child: AutoSizeText(
              '4.8',
              style: const TextStyle(fontSize: 20),
              maxLines: 1,
              group: autoSizeGroup,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            flex: 4,
            child: AutoSizeText(
              '  |   7,596 ${LocaleKeys.CourseDetails_students.tr()}',
              style: const TextStyle(fontSize: 20),
              maxLines: 1,
              group: autoSizeGroup,
            ),
          ),
        ],
      ),
    );
  }
}
