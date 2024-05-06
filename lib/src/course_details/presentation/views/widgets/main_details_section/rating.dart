import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/translations/local_keys.g.dart';

import '../../../../../../core/assets/app_svgs.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppSVGs.stars,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '4.8',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(4,479 ${LocaleKeys.CourseDetails_reviews.tr()})',
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
