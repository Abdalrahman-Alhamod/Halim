part of '../../my_course_details_view.dart';

class _MyCourseDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _MyCourseDetailsAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(onPressed: () {
        GoRouter.of(context).pop();
      }),
      leadingWidth: AppConstrains.maxWidthAppBarIcon,
      toolbarHeight: AppConstrains.maxWidthAppBarIcon,
      title: AutoSizeText(
        LocaleKeys.CourseDetails_Test_courseTitle.tr(),
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        maxLines: 1,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
