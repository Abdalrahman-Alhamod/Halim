part of './authenticate_using_dialog.dart';

class _AuthenticationMethodButton extends StatelessWidget {
  const _AuthenticationMethodButton({
    required this.onPressed,
    required this.label,
    required this.icon,
  });
  final void Function() onPressed;
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.black,
        disabledBackgroundColor: AppColors.disabledButtonColor,
        shadowColor: AppColors.primaryColor,
        maximumSize: const Size(
          AppConstrains.maxWidth,
          AppConstrains.maxHeight,
        ),
        fixedSize: const Size(double.infinity, 60),
        elevation: 0,
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
