part of '../../my_course_details_view.dart';

class _MyCourseDetailsBody extends StatelessWidget {
  const _MyCourseDetailsBody(this.isCompleted);
  final bool isCompleted;
  @override
  Widget build(BuildContext context) {
    List<SectionPage> sections = [
      SectionPage(
        title: LocaleKeys.CourseDetails_Sections_lessons.tr(),
        child: const CourseLessonsSectionList(),
      ),
      SectionPage(
        title: LocaleKeys.CourseDetails_Sections_community.tr(),
        child: const CourseCommunitySection(),
      ),
      SectionPage(
        title: LocaleKeys.CourseDetails_MyCourse_announcements.tr(),
        child: const MyCourseAnnouncementsSection(),
      ),
    ];
    if (isCompleted) {
      sections.add(
        SectionPage(
          title: LocaleKeys.CourseDetails_MyCourse_certificate.tr(),
          child: const MyCourseCertificateSection(),
        ),
      );
    }

    return SectionsView(
      pages: sections,
      isScrollable: true,
      isChildrenExpandable: false,
    );
  }
}
