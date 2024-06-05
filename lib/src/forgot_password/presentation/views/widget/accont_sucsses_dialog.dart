import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';

class AccontSucssesDialog extends StatefulWidget {
  final VoidCallback onLoadingComplete;
   AccontSucssesDialog(this.onLoadingComplete);

  @override
  State<AccontSucssesDialog> createState() => _AccontSucssesDialogState();
}

class _AccontSucssesDialogState extends State<AccontSucssesDialog> {
  void onLoadingComplete() {
    print('Loading complete!');
    GoRouter.of(context).push(AppRoute.kHome);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: context.height * 0.65,
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          SizedBox(
            width: 200,
            child: Image.asset(
              AppImages.accountDone,
              scale: 1.1,
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          AutoSizeText(
            'Congratulations!',
            style: const TextStyle(
              fontSize: 32,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
          ),
          const Spacer(
            flex: 3,
          ),
          Text(
            'Your accont is ready to use.',
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                CustomLoadingIndicator(
                  color: AppColors.primaryColor,
                  onComplete: onLoadingComplete,
                  size: 75,
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
