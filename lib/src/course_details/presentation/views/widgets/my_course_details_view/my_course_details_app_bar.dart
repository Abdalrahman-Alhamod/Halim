part of '../../my_course_details_view.dart';

class _MyCourseDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _MyCourseDetailsAppBar(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackArrowIcon(
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      toolbarHeight: AppConstrains.maxAppBarHeight,
      title: AutoSizeText(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        maxLines: 1,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
