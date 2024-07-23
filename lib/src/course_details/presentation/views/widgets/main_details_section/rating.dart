import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

import '../../../../../../core/assets/app_svgs.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var autoSizeGroup = AutoSizeGroup();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          AppSVGs.stars,
          width: 20,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: AutoSizeText(
            '4.8',
            style: const TextStyle(fontSize: 18),
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
            '(4,479 ${LocaleKeys.CourseDetails_reviews.tr()})',
            style: const TextStyle(fontSize: 18),
            maxLines: 1,
            group: autoSizeGroup,
          ),
        ),
      ],
    );
  }
}
