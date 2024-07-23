part of '../sections_view.dart';

class _SectionNavButton extends StatelessWidget {
  const _SectionNavButton({
    required this.isSelected,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final bool isSelected;
  final void Function(double buttonWidth) onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed.call((context.findRenderObject() as RenderBox).size.width);
      },
      style: TextButton.styleFrom(
        shape: LinearBorder.bottom(
          side: isSelected
              ? const BorderSide(
                  color: AppColors.primaryColor,
                  width: 4,
                )
              : BorderSide(
                  color: context.isDarkMode
                      ? Colors.grey.shade800
                      : Colors.grey.shade500,
                  width: 2,
                ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected
                ? AppColors.primaryColor
                : context.isDarkMode
                    ? Colors.grey.shade700
                    : Colors.grey.shade500,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
