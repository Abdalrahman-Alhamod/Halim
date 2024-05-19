part of '../course_box.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          AppImages.testCourseCover,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
