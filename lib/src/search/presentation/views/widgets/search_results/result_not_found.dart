import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/assets/app_images.dart';

class ResultNotFound extends StatelessWidget {
  const ResultNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 250,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(
              AppImages.notFound,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Not Found',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sorry, the keyword tou entered cannot be found, please check again or search with another keyword',
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
