part of 'recent_search.dart';

class RecentSearchItem extends StatelessWidget {
  const RecentSearchItem({
    super.key,
    required this.title,
    required this.onClearPressed,
    required this.onTap,
  });
  final String title;
  final void Function() onClearPressed;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: context.isDarkMode
                    ? Colors.grey.shade400
                    : Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            IconButton(
              onPressed: onClearPressed,
              icon: SvgPicture.asset(
                AppSVGs.close,
                width: 28,
                colorFilter: ColorFilter.mode(
                  Colors.grey.shade500,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
