import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/widgets/refresh_base.dart';
import 'package:halim/src/course_details/data/models/anouncement_box_model.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import 'widgets/announcement_box.dart';

class MyCourseAnnouncementsSection extends StatelessWidget {
  const MyCourseAnnouncementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().getCourseAnnouncementsSection();
    List<AnnouncementBoxModel> courseAnnouncements =
        context.read<CourseDetailsCubit>().courseAnnouncements ?? [];
    return RefreshBase(
      onRefresh: () async {
        context.read<CourseDetailsCubit>().getCourseAnnouncementsSection();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen: context
              .read<CourseDetailsCubit>()
              .buildCourseAnnouncementsSectionWhen,
          listenWhen: context
              .read<CourseDetailsCubit>()
              .listenCourseAnnouncementsSectionWhen,
          listener: context
              .read<CourseDetailsCubit>()
              .listenCourseAnnouncementsSection,
          builder: (context, state) {
            state.whenOrNull(
              fetchCourseAnnouncementsSectionSuccess: (data, message) {
                courseAnnouncements = data;
              },
            );
            return context
                .read<CourseDetailsCubit>()
                .buildCourseAnnouncementsSection(
                  context: context,
                  state: state,
                  child: ListView.separated(
                    itemCount: courseAnnouncements.length,
                    itemBuilder: (context, index) => AnnouncementBox(
                      announcementBoxModel: courseAnnouncements[index],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}
