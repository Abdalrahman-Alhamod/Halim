part of '../../my_course_details_view.dart';

class _MyCourseDetailsBody extends StatelessWidget {
  const _MyCourseDetailsBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SectionsView(
              pages: [
                SectionPage(
                  title: LocaleKeys.CourseDetails_Sections_lessons.tr(),
                  child: const CourseLessonsSection(),
                ),
                SectionPage(
                  title: LocaleKeys.CourseDetails_Sections_community.tr(),
                  child: const CourseCommunitySection(),
                ),
                SectionPage(
                  title: LocaleKeys.CourseDetails_MyCourse_announcements.tr(),
                  child: const MyCourseAnouncementsSection(),
                ),
                SectionPage(
                  title: LocaleKeys.CourseDetails_MyCourse_certificate.tr(),
                  child: const MyCourseCertificateSection(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
