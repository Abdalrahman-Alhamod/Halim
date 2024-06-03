part of '../../search_results.dart';

class _SearchByButton extends StatelessWidget {
  const _SearchByButton({
    required this.isPressed,
    required this.onPressed,
    required this.label,
  });
  final bool isPressed;
  final void Function()? onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor:
            isPressed ? AppColors.primaryColor : Colors.transparent,
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 3,
        ),
        padding: EdgeInsets.zero,
        minimumSize: Size(
          double.infinity,
          55,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: isPressed ? Colors.white : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
