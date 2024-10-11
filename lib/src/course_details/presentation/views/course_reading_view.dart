import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../../../core/widgets/refresh_base.dart';
import '../manager/course_details_cubit/course_details_cubit.dart';
import 'widgets/course_reading_view/course_reading_app_bar.dart';

class CourseReadingView extends StatelessWidget {
  const CourseReadingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseReadingAppBar(),
      body: RefreshBase(
        onRefresh: () =>
            context.read<CourseDetailsCubit>().getCourseLessonDetails(),
        child: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
          buildWhen:
              context.read<CourseDetailsCubit>().buildCourseLessonDetailsWhen,
          listenWhen:
              context.read<CourseDetailsCubit>().listenCourseLessonDetailsWhen,
          listener:
              context.read<CourseDetailsCubit>().listenCourseLessonDetails,
          builder: (context, state) {
            return context
                .read<CourseDetailsCubit>()
                .buildCourseLessonDetailsReading(
                  context: context,
                  state: state,
                  child: Markdown(
                    data: state.whenOrNull(
                          fetchCourseLessonDetailsSuccess: (data, message) {
                            return data.reading?.content ?? '';
                          },
                        ) ??
                        '',
                    padding: const EdgeInsets.all(8),
                  ),
                );
          },
        ),
      ),
    );
  }
}
