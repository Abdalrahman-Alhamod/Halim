import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/translations/local_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';
import '../../../../../../../core/assets/app_svgs.dart';

class CourseAboutMentor extends StatelessWidget {
  const CourseAboutMentor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage(
            AppImages.testMentor,
          ),
          radius: 24,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              LocaleKeys.CourseDetails_Test_courseMentorTitle.tr(),
              style: TextStyle(
                color: context.isDarkMode
                    ? Colors.grey.shade400
                    : Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppSVGs.chat,
            width: 32,
          ),
        ),
      ],
    );
  }
}
