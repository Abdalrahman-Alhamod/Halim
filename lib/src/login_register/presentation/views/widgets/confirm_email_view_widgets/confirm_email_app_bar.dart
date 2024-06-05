part of '../../confirm_email_view.dart';

class _ConfirmEmailAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const _ConfirmEmailAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      title: Text(
        LocaleKeys.Auth_confirmYourEmail.tr(),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      elevation: 0,
      //  toolbarHeight: 80,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: context.isDarkMode ? Colors.white : Colors.black,
        ),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(AppConstrains.maxAppBarHeight);
}
