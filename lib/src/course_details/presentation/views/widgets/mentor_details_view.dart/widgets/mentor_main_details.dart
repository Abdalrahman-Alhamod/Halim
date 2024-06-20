import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../../core/assets/app_svgs.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import 'mentor_main_details_vertical_divider.dart';
import 'mentor_main_details_vertical_info.dart';
import 'mentor_main_section_button.dart';

class MentorMainDetails extends StatelessWidget {
  const MentorMainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MentorMainDetailsVerticalInfo(
                num: '25',
                label: LocaleKeys.CourseDetails_Mentor_coursesNum.tr(),
              ),
              const MentorMainDetailsVerticalDivider(),
              MentorMainDetailsVerticalInfo(
                num: '22,379',
                label: LocaleKeys.CourseDetails_students.tr(),
              ),
              const MentorMainDetailsVerticalDivider(),
              MentorMainDetailsVerticalInfo(
                num: '9,287',
                label: LocaleKeys.CourseDetails_reviews.tr(),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: MentorMainSectionButton(
                onPressed: () {
                  GoRouter.of(context).push(
                    AppRoute.kChatView,
                    extra: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
                  );
                },
                svgPicture: AppSVGs.chatFilled,
                title: LocaleKeys.CourseDetails_Mentor_message.tr(),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 1,
              child: MentorMainSectionButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                      'https://www.linkedin.com/in/abd-alrrahman-alhamod/',
                    ),
                  );
                },
                svgPicture: AppSVGs.compass,
                title: LocaleKeys.CourseDetails_Mentor_website.tr(),
                isOutlined: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
