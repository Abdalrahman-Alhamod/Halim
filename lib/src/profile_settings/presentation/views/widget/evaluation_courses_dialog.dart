import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/themes/app_colors.dart';
import '../../../../../../../core/widgets/custome_elevated_button.dart';
import '../../../../../../../core/widgets/custome_flat_button.dart';

class EvaluationCoursesDialog extends StatefulWidget {
  const EvaluationCoursesDialog({
    super.key,
  });

  @override
  State<EvaluationCoursesDialog> createState() =>
      _EvaluationCoursesDialogState();
}

class _EvaluationCoursesDialogState extends State<EvaluationCoursesDialog> {
  double _rating = 3.0;

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
            child: SizedBox(
              width: 200,
              child: Image.asset(
                AppImages.enrollDone,
                scale: 1.1,
              ),
            ),
            /* Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AppImages.iconPublic,
                          color: AppColors.primaryColor,
                        ),
                        Icon(
                          Icons.star,
                          size: 80,
                          color: Colors.white, 
                        ),
                      ],
                    ),
                  ),
                ),*/
          ),
          const Spacer(
            flex: 5,
          ),
          AutoSizeText(
            'Course Completed!',
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
            'Please leave a review for your course',
            style: const TextStyle(
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
              SizedBox(height: 20),
              RatingBar.builder(
                initialRating: _rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              title: 'Send Review',
              elevation: 0,
            ),
          ),
          const Spacer(
            flex: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomFlatButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              width: MediaQuery.of(context).size.width * 0.40,
              height: 45,
              title: 'Cancel',
              kBackgroundcolor: context.isDarkMode
                  ? AppColors.darkFlatButtonColor
                  : const Color.fromARGB(255, 113, 132, 204).withOpacity(0.25),
              kTextcolor: context.isDarkMode
                  ? AppColors.lightFlatButtonColor
                  : AppColors.primaryColor,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
