import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../core/utils/app_route.dart';
import '../../../../../../../core/utils/context_extensions.dart';

import '../../../../../../../core/assets/app_images.dart';

class CourseAboutMentor extends StatelessWidget {
  const CourseAboutMentor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kMentorDetailsView);
      },
      child: Row(
        children: [
          Expanded(
            child: Row(
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
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        LocaleKeys.CourseDetails_Test_courseMentorTitle.tr(),
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.grey.shade400
                              : Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // IconButton(
          //   onPressed: () {
          //     GoRouter.of(context).push(
          //       AppRoute.kChatView,
          //       extra: LocaleKeys.CourseDetails_Test_courseMentorName.tr(),
          //     );
          //   },
          //   icon: SvgPicture.asset(
          //     AppSVGs.chat,
          //     width: 40,
          //   ),
          // ),
        ],
      ),
    );
  }
}
