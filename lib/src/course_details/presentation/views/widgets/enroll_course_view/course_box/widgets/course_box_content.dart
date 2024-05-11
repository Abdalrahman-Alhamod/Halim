part of '../course_box.dart';

class CourseBoxContent extends StatelessWidget {
  const CourseBoxContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: CourseImage(),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CourseCategoryBox(),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              CourseTitle(),
              Spacer(
                flex: 1,
              ),
              RatingWithStudents(),
            ],
          ),
        )
      ],
    );
  }
}
