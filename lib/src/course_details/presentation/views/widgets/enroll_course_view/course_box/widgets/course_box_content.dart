part of '../course_box.dart';

class CourseBoxContent extends StatelessWidget {
  const CourseBoxContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CourseMainSectionModel courseMainSectionModel =
        context.read<CourseDetailsCubit>().courseMainSection ??
            const CourseMainSectionModel();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: NetworkImageLoader(
                width: double.infinity,
                imageUrl: courseMainSectionModel.image ?? '',
              ),
            )),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 1,
              ),
              CourseCategoryBox(
                title: courseMainSectionModel.subcategory?.name ?? '',
              ),
              const Spacer(
                flex: 1,
              ),
              Flexible(
                flex: 8,
                child: AutoSizeText(
                  courseMainSectionModel.title ?? '',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              RatingWithStudents(
                ratingAvg: courseMainSectionModel.reviewsAvg ?? 0,
                enrollmentsCount: courseMainSectionModel.enrollmentsCount ?? 0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
