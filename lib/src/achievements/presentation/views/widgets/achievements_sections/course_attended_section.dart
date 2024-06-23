import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../domain/entities/achievemenet_badge.dart';
import '../achievements_progress_indicator.dart';
import '../tracked_badge.dart';

class CourseAttendedSection extends StatefulWidget {
  const CourseAttendedSection({super.key});

  @override
  State<CourseAttendedSection> createState() => _CourseAttendedSectionState();
}

class _CourseAttendedSectionState extends State<CourseAttendedSection> {
  late final List<AchievemenetBadge> _badges;
  @override
  void initState() {
    _badges = [
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Attend 3 Course',
        current: 3,
        total: 3,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Attend 5 Course',
        current: 5,
        total: 5,
      ),
      AchievemenetBadge(
        image: AppImages.testBadge,
        name: 'Attend 10 Course',
        current: 7,
        total: 10,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Attend 15 Courset',
        current: 7,
        total: 15,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Attend 20 Course',
        current: 7,
        total: 20,
      ),
      AchievemenetBadge(
        image: AppImages.testBadgeDisabled,
        name: 'Attend 25 Course',
        current: 7,
        total: 25,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.pad16,
      ),
      child: Column(
        children: [
          AchievementsProgressIndicator(
            title: LocaleKeys
                .Achievements_Sections_CoursesAttended_coursesAttended.tr(),
            current: 2,
            total: 6,
            progressColor: Colors.pink,
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemCount: _badges.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemBuilder: (context, index) => TrackedBadge(
              image: _badges[index].image,
              title: _badges[index].name,
              current: _badges[index].current,
              total: _badges[index].total,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
