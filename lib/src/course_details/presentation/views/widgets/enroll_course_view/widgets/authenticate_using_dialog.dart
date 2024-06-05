import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/course_details/presentation/views/pin_auth_view.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/functions/authenticate.dart';
import 'package:halim/src/course_details/presentation/views/widgets/enroll_course_view/widgets/enroll_success_dialog.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/constants/app_constrains.dart';
import '../../../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../../../core/themes/app_colors.dart';

class AuthenticateUsingDialog extends StatelessWidget {
  const AuthenticateUsingDialog({super.key, required this.parentContext});
  final BuildContext parentContext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: context.height * 0.6,
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          SizedBox(
            width: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  AppImages.iconPublic,
                  scale: 1.1,
                ),
                Icon(
                  Icons.lock,
                  size: 64,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            LocaleKeys.CourseDetails_Enroll_verifyYourIdentityToPurchse.tr(),
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                AuthenticationMethodButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showCustomDialog(
                      context: context,
                      widget: PINAuthDialog(
                        parentContext: parentContext,
                      ),
                    );
                  },
                  label: LocaleKeys.CourseDetails_Enroll_pin.tr(),
                  icon: Icons.pin,
                ),
                const SizedBox(
                  height: 14,
                ),
                AuthenticationMethodButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    bool authenticated = await authenticate();
                    if (authenticated) {
                      showCustomDialog(
                        context: parentContext,
                        widget: const EnrollSuccessDialog(),
                      );
                    }
                  },
                  label: LocaleKeys.CourseDetails_Enroll_biometrics.tr(),
                  icon: Icons.fingerprint,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class AuthenticationMethodButton extends StatelessWidget {
  const AuthenticationMethodButton({
    super.key,
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
        fixedSize: Size(double.infinity, 60),
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
