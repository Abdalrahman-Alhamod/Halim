import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/src/auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../../../core/assets/app_images.dart';
import '../../../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../../../core/widgets/custome_elevated_button.dart';

class EvaluationCoursesDialog extends StatefulWidget {
  const EvaluationCoursesDialog({
    super.key,
    required this.onSubmit,
  });
  final void Function(int rating, String? comment) onSubmit;
  @override
  State<EvaluationCoursesDialog> createState() =>
      _EvaluationCoursesDialogState();
}

class _EvaluationCoursesDialogState extends State<EvaluationCoursesDialog> {
  double _rating = 3.0;
  String? _comment;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 350,
        height: context.height * 0.7,
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            SizedBox(
              width: 200,
              child: SizedBox(
                width: 200,
                child: Image.asset(
                  AppImages.enrollDone,
                  scale: 1.1,
                ),
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            const AutoSizeText(
              'Course Completed!',
              style: TextStyle(
                fontSize: 32,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            const Spacer(
              flex: 3,
            ),
            const Text(
              'Please leave a review for your course',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(
              flex: 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                RatingBar.builder(
                  initialRating: _rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star_rounded,
                    color: AppColors.primaryColor,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                  },
                ),
              ],
            ),
            const Spacer(
              flex: 8,
            ),
            CustomTextField(
              hintText: 'Comment',
              onChanged: (value) {
                if (value.trim().isNotEmpty) {
                  _comment = value;
                } else {
                  _comment = null;
                }
              },
              unfocusedFillColor: context.isDarkMode
                  ? AppColors.darkFlatButtonColor.withAlpha(150)
                  : AppColors.textFieldColor,
            ),
            const Spacer(
              flex: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                  widget.onSubmit.call(_rating.toInt(), _comment);
                },
                title: 'Send Review',
                elevation: 0,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomElevatedButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                title: LocaleKeys.Buttons_cancel.tr(),
                elevation: 0,
                backgroundColor: context.isDarkMode
                    ? AppColors.darkFlatButtonColor
                    : Colors.grey.shade600,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
