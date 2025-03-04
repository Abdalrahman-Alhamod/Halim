import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/helpers/string_helper.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';

class CourseReviewsRatingHeader extends StatelessWidget {
  const CourseReviewsRatingHeader({
    super.key,
    required this.ratingCount,
    required this.ratingAvg,
  });
  final int ratingCount;
  final num ratingAvg;
  @override
  Widget build(BuildContext context) {
    var autoSizeGroup = AutoSizeGroup();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppSVGs.stars,
                width: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                child: AutoSizeText(
                  StringHelper.formatNum(ratingAvg),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  group: autoSizeGroup,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 4,
                child: AutoSizeText(
                  '($ratingCount ${LocaleKeys.CourseDetails_reviews.tr()})',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  group: autoSizeGroup,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
